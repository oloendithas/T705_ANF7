.class Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;
.super Ljava/lang/Object;
.source "CallMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$1;

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;-><init>(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 421
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mMessageText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$100(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # invokes: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->getByteLength(Ljava/lang/String;)I
    invoke-static {v4, v1}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$200(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;Ljava/lang/String;)I

    move-result v0

    .line 424
    .local v0, "len":I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->MAX_LENGTH_BYTE:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$300(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)I

    move-result v4

    if-le v0, v4, :cond_1

    .line 425
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mIsShowMoreCharWarning:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$400(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 426
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    const/16 v5, 0x2001

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->showToastMessage(I)V

    .line 427
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # setter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mIsShowMoreCharWarning:Z
    invoke-static {v4, v2}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$402(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;Z)Z

    .line 429
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # setter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mIsOverLength:Z
    invoke-static {v4, v2}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$502(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;Z)Z

    .line 437
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mCall:Landroid/widget/Button;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$800(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mIsOverLength:Z
    invoke-static {v5}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$500(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 438
    iget-object v2, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mNumberOfChar:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$900(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->MAX_LENGTH_BYTE:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$300(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    return-void

    .line 431
    :cond_1
    const/16 v4, 0x10

    if-le v0, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mIsShowMore16CharWarning:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$600(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$700(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;)Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v4

    const/16 v5, 0x1002

    if-ne v4, v5, :cond_2

    .line 432
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    const/16 v5, 0x2002

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->showToastMessage(I)V

    .line 433
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # setter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mIsShowMore16CharWarning:Z
    invoke-static {v4, v2}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$602(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;Z)Z

    .line 435
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;

    # setter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->mIsOverLength:Z
    invoke-static {v4, v3}, Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;->access$502(Lcom/sec/android/app/dialertab/callmessage/CallMessageActivity;Z)Z

    goto :goto_0

    :cond_3
    move v2, v3

    .line 437
    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 443
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 447
    return-void
.end method
