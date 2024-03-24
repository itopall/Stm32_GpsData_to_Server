/*
 * fifo.c
 *
 *  Created on: 4 Mar 2024
 *      Author: ilker
 */

#include "fifo.h"

void FIFO_Clear(FIFO *pFifo)
{
  pFifo->Head = pFifo->Tail = pFifo->Buffer;

  pFifo->nLines = 0;
  pFifo->Full = FALSE;
}

// FIFO yapısını başlatır
void FIFO_Init(FIFO *pFifo, unsigned char *buf, int size)
{
  pFifo->Buffer = buf;
  pFifo->Size = size;

  FIFO_Clear(pFifo);
}

// FIFO yapısında veri yoksa (boşsa) TRUE
// veri varsa FALSE
int FIFO_IsEmpty(FIFO *pFifo)
{
  return (pFifo->Head == pFifo->Tail);
}

// FIFO yapısı tümüyle doluysa TRUE
// değilse FALSE
int FIFO_IsFull(FIFO *pFifo)
{
  return pFifo->Full;
}

// FIFO yapısına veri ekler
// Ekleme başarılıysa TRUE döner
// Aksi durumda (full) FALSE döner
int FIFO_SetData(FIFO *pFifo, unsigned char val)
{
  unsigned char *ptr = pFifo->Tail;

  if (++ptr == pFifo->Buffer + pFifo->Size)
    ptr = pFifo->Buffer;

  if (ptr == pFifo->Head) {
    // Buffer full
    pFifo->Full = TRUE;
    return FALSE;
  }

  *pFifo->Tail = val; // veri yüklendi
  pFifo->Tail = ptr;

  if (val == '\n')
    ++pFifo->nLines;

  return TRUE;
}

// FIFO yapısından veri çeker
// Bloke çalışır (çekilecek veri yoksa)
unsigned char FIFO_GetData(FIFO *pFifo)
{
  unsigned char val;

  while (FIFO_IsEmpty(pFifo)) ;

  // FIFO da çekilecek veri var
  val = *pFifo->Head;

  // Head göstericisini ilerlet
  if (++pFifo->Head == pFifo->Buffer + pFifo->Size)
    pFifo->Head = pFifo->Buffer;

  pFifo->Full = FALSE;

  if (val == '\n')
    --pFifo->nLines;

  return val;
}

// '\n' ile karşılaşana kadar olan blok veriyi çeker ve
// parametre LineBuf'a kopyalar
// Çekilecek line yoksa FALSE döner, varsa TRUE döner
// Line verisinin aktarıldığı buufer'ın (LineBuf)
// sonuna '\0' eklenir
int FIFO_GetLine(FIFO *pFifo, unsigned char *LineBuf)
{
  unsigned char val;

  if (pFifo->nLines == 0)
    return FALSE;

  do {
    val = FIFO_GetData(pFifo);
    *LineBuf++ = val;
  } while (val != '\n');

  *LineBuf = '\0';
  return TRUE;
}
