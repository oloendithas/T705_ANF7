.class public Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;
.super Ljava/lang/Object;
.source "SEF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/secvision/sef/SEF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QdioJPEGData"
.end annotation


# instance fields
.field public audio_count:I

.field public endOffset:Ljava/util/ArrayList;

.field public filename:Ljava/lang/String;

.field public startOffset:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    .line 781
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->endOffset:Ljava/util/ArrayList;

    .line 782
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->audio_count:I

    .line 783
    invoke-direct {p0}, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->resetQdioJpegData()V

    .line 784
    return-void
.end method

.method private resetQdioJpegData()V
    .registers 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 720
    iget-object v0, p0, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->endOffset:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 721
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->audio_count:I

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->filename:Ljava/lang/String;

    .line 723
    return-void
.end method


# virtual methods
.method public getAudioListSize()I
    .registers 2

    .prologue
    .line 738
    iget v0, p0, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->audio_count:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getLength(I)I
    .registers 4
    .param p1, "idx"    # I

    .prologue
    const/4 v0, 0x0

    .line 762
    if-gez p1, :cond_4

    .line 767
    :cond_3
    :goto_3
    return v0

    .line 764
    :cond_4
    iget-object v1, p0, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->endOffset:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p1, v1, :cond_3

    .line 767
    iget-object v0, p0, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->endOffset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_3
.end method

.method public getStartOffset(I)I
    .registers 4
    .param p1, "idx"    # I

    .prologue
    const/4 v0, 0x0

    .line 747
    if-gez p1, :cond_4

    .line 752
    :cond_3
    :goto_3
    return v0

    .line 749
    :cond_4
    iget-object v1, p0, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p1, v1, :cond_3

    .line 752
    iget-object v0, p0, Lcom/sec/android/secvision/sef/SEF$QdioJPEGData;->startOffset:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3
.end method
