.class Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;
.super Ljava/lang/Object;
.source "CallMessageEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;
    .param p2, "x1"    # Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$1;

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;-><init>(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 202
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mMessageText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->access$100(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "text":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    # invokes: Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->getByteLength(Ljava/lang/String;)I
    invoke-static {v4, v1}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->access$200(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;Ljava/lang/String;)I

    move-result v0

    .line 205
    .local v0, "len":I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->MAX_LENGTH_BYTE:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->access$300(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)I

    move-result v4

    if-le v0, v4, :cond_1

    .line 206
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mIsShowMoreCharWarning:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->access$400(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 207
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    const/16 v5, 0x2001

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->showToastMessage(I)V

    .line 208
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    # setter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mIsShowMoreCharWarning:Z
    invoke-static {v4, v2}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->access$402(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;Z)Z

    .line 210
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    # setter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mIsOverLength:Z
    invoke-static {v4, v2}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->access$502(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;Z)Z

    .line 218
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mOkBtn:Landroid/widget/Button;
    invoke-static {v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->access$700(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mIsOverLength:Z
    invoke-static {v5}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->access$500(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 219
    iget-object v2, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mNumberOfChar:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->access$800(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)Landroid/widget/TextView;

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

    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->MAX_LENGTH_BYTE:I
    invoke-static {v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->access$300(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    return-void

    .line 212
    :cond_1
    const/16 v4, 0x10

    if-le v0, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    # getter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mIsShowMore16CharWarning:Z
    invoke-static {v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->access$600(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 213
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    const/16 v5, 0x2002

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->showToastMessage(I)V

    .line 214
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    # setter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mIsShowMore16CharWarning:Z
    invoke-static {v4, v2}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->access$602(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;Z)Z

    .line 216
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity$MessageTextWatcher;->this$0:Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    # setter for: Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->mIsOverLength:Z
    invoke-static {v4, v3}, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->access$502(Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;Z)Z

    goto :goto_0

    :cond_3
    move v2, v3

    .line 218
    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 224
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 228
    return-void
.end method
