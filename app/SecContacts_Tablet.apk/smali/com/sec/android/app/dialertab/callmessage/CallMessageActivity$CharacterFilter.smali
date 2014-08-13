.class public Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$CharacterFilter;
.super Ljava/lang/Object;
.source "CallMessageActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CharacterFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$CharacterFilter;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x2004

    .line 537
    iget-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$CharacterFilter;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$700(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v5

    const/16 v6, 0x1002

    if-ne v5, v6, :cond_2

    .line 538
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 541
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$CharacterFilter;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->showToastMessage(I)V

    .line 542
    const-string v4, ""

    .line 609
    :cond_1
    :goto_0
    return-object v4

    .line 546
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$CharacterFilter;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$700(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v5

    const/16 v6, 0x1003

    if-ne v5, v6, :cond_4

    .line 547
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 549
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$CharacterFilter;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    invoke-virtual {v4, v7}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->showToastMessage(I)V

    .line 550
    const-string v4, ""

    goto :goto_0

    .line 554
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$CharacterFilter;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$700(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v5

    const/16 v6, 0x1001

    if-ne v5, v6, :cond_1

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const/16 v3, 0x20

    .line 557
    .local v3, "v":C
    const/4 v1, 0x0

    .line 558
    .local v1, "isContains":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 559
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 560
    sparse-switch v3, :sswitch_data_0

    .line 558
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 562
    :sswitch_0
    const/16 v5, 0x226a

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 563
    const/4 v1, 0x1

    .line 564
    goto :goto_2

    .line 566
    :sswitch_1
    const/16 v5, 0x226b

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 567
    const/4 v1, 0x1

    .line 568
    goto :goto_2

    .line 570
    :sswitch_2
    const/16 v5, 0x25cf

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 571
    const/4 v1, 0x1

    .line 572
    goto :goto_2

    .line 574
    :sswitch_3
    const v5, 0xffe0

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 575
    const/4 v1, 0x1

    .line 576
    goto :goto_2

    .line 578
    :sswitch_4
    const v5, 0xffe1

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 579
    const/4 v1, 0x1

    .line 580
    goto :goto_2

    .line 582
    :sswitch_5
    const v5, 0xffe5

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 583
    const/4 v1, 0x1

    .line 584
    goto :goto_2

    .line 586
    :sswitch_6
    const/16 v5, 0x24d2

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 587
    const/4 v1, 0x1

    .line 588
    goto :goto_2

    .line 590
    :sswitch_7
    const/16 v5, 0xb7

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 591
    const/4 v1, 0x1

    .line 592
    goto :goto_2

    .line 594
    :sswitch_8
    const/16 v5, 0x20

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 595
    const/4 v1, 0x1

    .line 596
    goto :goto_2

    .line 598
    :sswitch_9
    const v5, 0xffe6

    invoke-virtual {v2, v0, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 599
    const/4 v1, 0x1

    goto :goto_2

    .line 603
    :cond_5
    if-eqz v1, :cond_1

    .line 604
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 560
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_2
        0xa2 -> :sswitch_3
        0xa3 -> :sswitch_4
        0xa5 -> :sswitch_5
        0xa9 -> :sswitch_6
        0xab -> :sswitch_0
        0xbb -> :sswitch_1
        0x2022 -> :sswitch_7
        0x20a9 -> :sswitch_9
        0xfffd -> :sswitch_8
    .end sparse-switch
.end method
