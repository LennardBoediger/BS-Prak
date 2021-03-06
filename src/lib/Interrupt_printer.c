
#include "../include/printf_lib.h"
#include "../include/interrupt_regs_driver.h"
#include "../include/mode_reg_helper.h"
#include "../include/dataab_helper.h"
#include "../include/MMU.h"
#include "../include/process.h"

#define WNR_BIT_SHIFT 11

void print_psr_mode(uint32_t _psr){
    switch (_psr % 32){
        case 16:
            kprintf(" User");
            break;
        case 17:
            kprintf(" FIQ");
            break;
        case 18:
            kprintf(" IRQ");
            break;
        case 19:
            kprintf(" Supervisor");
            break;
        case 23:
            kprintf(" Abort");
            break;
        case 27:
            kprintf(" Undefined");
            break;
        case 31:
            kprintf(" System");
            break;
        default:
            kprintf(" Unvalid Mode");
            break;

    }
}
void print_psr_bits(uint32_t _psr) {

    char bits[] = {'N','Z','C','V','_','I','F','T','\0'}; //0
    int i;
    for (i = 0; i <=3; ++i) {
        if (((_psr & (1 << (31-i))) >> (31-i)) == 0){
            bits[i]='_';
        }
    }
    for (i = 5; i <=7; ++i) {
        if (((_psr & (1 << (12-i))) >> (12-i)) == 0){
            bits[i]='_';
        }
    }
    kprintf("%s", bits);
}

void print_mode_reg(){
    kprintf("\n\r>>> Aktuelle modusspezifische Register <<<\n\r");
    kprintf("             LR         SP         SPSR\n\r");
    uint32_t tmp_lr,tmp_sp;
    tmp_lr = get_lr_system();
    tmp_sp = get_sp_system();
    kprintf("User/System: %x %x\n\r", tmp_lr, tmp_sp);
    tmp_lr = get_lr_supervisor();
    tmp_sp = get_sp_supervisor();
    kprintf("Supervisor:  %x %x ", tmp_lr, tmp_sp);
    print_psr_bits(get_spsr_supervisor());
    print_psr_mode(get_spsr_supervisor());
    kprintf("\n\r");
    tmp_lr = get_lr_abort();
    tmp_sp = get_sp_abort();
    kprintf("Abort:       %x %x ", tmp_lr, tmp_sp);
    print_psr_bits(get_spsr_abort());
    print_psr_mode(get_spsr_abort());
    kprintf("\n\r");
    tmp_lr = get_lr_FIQ();
    tmp_sp = get_sp_FIQ();
    kprintf("FIQ:         %x %x ", tmp_lr, tmp_sp);
    print_psr_bits(get_spsr_FIQ());
    print_psr_mode(get_spsr_FIQ());
    kprintf("\n\r");
    tmp_lr = get_lr_IRQ();
    tmp_sp = get_sp_IRQ();
    kprintf("IRQ:         %x %x ", tmp_lr, tmp_sp);
    print_psr_bits(get_spsr_IRQ());
    print_psr_mode(get_spsr_IRQ());
    kprintf("\n\r");
    tmp_lr = get_lr_undefined();
    tmp_sp = get_sp_undefined();
    kprintf("Undefined:   %x %x ", tmp_lr, tmp_sp);
    print_psr_bits(get_spsr_undefined());
    print_psr_mode(get_spsr_undefined());
    kprintf("\n\r");
}



void print_data_abort_reason(){
    uint32_t dfar = read_dfar();
    uint32_t dfsr = read_dfsr();
    if((dfsr & (1 << WNR_BIT_SHIFT)) >> WNR_BIT_SHIFT){
        kprintf("Zugriff: schreibend auf Adresse %x\n\r", dfar);
    } else{
        kprintf("Zugriff: lesend auf Adresse %x\n\r", dfar);
    }
    kprintf("Fehler: ");
    switch (dfar % 32) {
        case 0:
            kprintf("No function, reset value\n\r");
            break;
        case 1:
            kprintf("Alignment fault\n\r");
            break;
        case 2:
            kprintf("Debug event fault\n\r");
            break;
        case 3:
            kprintf("Access Flag fault on Section\n\r");
            break;
        case 4:
            kprintf("Cache maintenance operation fault[b]\n\r");
            break;
        case 5:
            kprintf("Translation fault on Section\n\r");
            break;
        case 6:
            kprintf("Access Flag fault on Page\n\r");
            break;
        case 7:
            kprintf("Translation fault on Page\n\r");
            break;
        case 8:
            kprintf("Precise External Abort\n\r");
            break;
        case 9:
            kprintf("Domain fault on Section\n\r");
            break;
        case 10:
            kprintf("No function\n\r");
            break;
        case 11:
            kprintf("Domain fault on Page\n\r");
            break;
        case 12:
            kprintf("External abort on translation, first level\n\r");
            break;
        case 13:
            kprintf("Permission fault on Section\n\r");
            break;
        case 14:
            kprintf("External abort on translation, second level\n\r");
            break;
        case 15:
            kprintf("Permission fault on Page\n\r");
            break;
        case 22:
            kprintf("Imprecise External Abort\n\r");
            break;
        default:
            kprintf("No function\n\r");
    }
    kprintf("\n\r");

}

void print_interrupt(uint32_t stackadress, uint32_t cpsr, uint32_t spsr, char* interrupt_name,
                     int32_t pc_offset, int8_t is_data_ab){
    kprintf("\n\r");
    int i;
    for (i = 0; i < 47; ++i) {
        kprintf("#");
    }
    //PC wird bei Ausnahme nach LR geschrieben + wegen pipline muss offset bechatet werden
    kprintf("\n\r%s an der Adresse %x\n\r",interrupt_name, *(int*) (stackadress+14*4) + pc_offset);
    //Wenn DATA_abort print DESR stuff
    if (is_data_ab == 1) {
        print_data_abort_reason();
    }
    kprintf(">>> Registerschnappschuss (aktueller Modus) <<<\n\r");
    for (i = 0; i <= 7; i++) {
        kprintf("R%u: %x\t    ", i, *(int*) (stackadress+i*4));
        kprintf("R%u: %x\n\r", i+8, *(int*) (stackadress+(i+8)*4));
    }
    kprintf("\n\r>>> Aktuelle Statusregister (SPSR im aktuellen Modus) <<<\n\r");
    kprintf("CPSR: ");
    print_psr_bits(cpsr);
    print_psr_mode(cpsr);
    kprintf(" %x\n\r", cpsr);
    kprintf("SPSR: ");
    print_psr_bits(spsr);
    print_psr_mode(spsr);
    kprintf(" %x\n\r", spsr);
    kprintf("\n\r");
    print_mode_reg();
    kprintf("\n\r");
    kprintfln("SET_L1 -> L1[INIT_KERNELSEC] = %x", get_L1_entry(INIT_KERNELSEC));
    kprintfln("SET_L1 -> L1[TEXT_KERNELSEC] = %x", get_L1_entry(TEXT_KERNELSEC));
    kprintfln("SET_L1 -> L1[DATA_KERNELSEC] = %x", get_L1_entry(DATA_KERNELSEC));
    kprintfln("SET_L1 -> L1[TEXT_USERSEC] = %x", get_L1_entry(TEXT_USERSEC));
    kprintfln("SET_L1 -> L1[RODATA_USERSEC]  = %x", get_L1_entry(RODATA_USERSEC));
    kprintfln("SET_L1 -> L1[VIRT_USER_STACKS]  = %x", get_L1_entry(VIRT_USER_STACKS));
    kprintfln("SET_L1 -> L1[VIRT_USER_STACKS]  = %x", get_L1_entry(VIRT_USER_STACKS));
    kprintfln("SET_L1 -> L1[VIRT_DATA_USERSEC]  = %x", get_L1_entry(VIRT_DATA_USERSEC));
    kprintfln("CURRENT_PROCESS = %i", get_current_process());

    for (i = 0; i < 47; ++i) {
        kprintf("#");
    }
    kprintf("\n\r\n\r");
}