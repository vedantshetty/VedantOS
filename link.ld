/* Name of the entry label */
ENTRY(loader)

SECTIONS {

  /* To Load code at 1 MB */
  . = 0x00100000;
/* Align at 4kb and get all text sections from all files */
  .text ALIGN (0x1000) :
  {
    *(.text)
  }

/* Align at 4KB and all read only from all files */
  .rodata ALIGN(0x1000) :
  {
    *(.data)
  }


/* Align at 4KB for all COMMON sections and all bss sections */
  .bss ALIGN (0x1000) :
  {
    *(COMMON)
    *(.bss)
  }
}