.class public Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$CharacterFilter;
.super Ljava/lang/Object;
.source "CallMessageEditActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CharacterFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$CharacterFilter;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/16 v2, 0x2004

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$CharacterFilter;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->access$900(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v0

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_1

    .line 303
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$CharacterFilter;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->showToastMessage(I)V

    .line 307
    const-string v0, ""

    .line 318
    :goto_0
    return-object v0

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$CharacterFilter;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;
    invoke-static {v0}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->access$900(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v0

    const/16 v1, 0x1003

    if-ne v0, v1, :cond_3

    .line 312
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$CharacterFilter;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->showToastMessage(I)V

    .line 315
    const-string v0, ""

    goto :goto_0

    .line 318
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
