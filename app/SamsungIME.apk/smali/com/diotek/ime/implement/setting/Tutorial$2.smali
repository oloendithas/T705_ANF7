.class Lcom/diotek/ime/implement/setting/Tutorial$2;
.super Ljava/lang/Object;
.source "Tutorial.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/Tutorial;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/Tutorial;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/Tutorial;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/Tutorial$2;->this$0:Lcom/diotek/ime/implement/setting/Tutorial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 207
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 201
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Tutorial$2;->this$0:Lcom/diotek/ime/implement/setting/Tutorial;

    # getter for: Lcom/diotek/ime/implement/setting/Tutorial;->mTutorialEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/Tutorial;->access$000(Lcom/diotek/ime/implement/setting/Tutorial;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*#0*#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Tutorial$2;->this$0:Lcom/diotek/ime/implement/setting/Tutorial;

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/Tutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->showImeVersionInfo()V

    .line 192
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Tutorial$2;->this$0:Lcom/diotek/ime/implement/setting/Tutorial;

    # getter for: Lcom/diotek/ime/implement/setting/Tutorial;->mTutorialEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/diotek/ime/implement/setting/Tutorial;->access$000(Lcom/diotek/ime/implement/setting/Tutorial;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_0
    return-void
.end method
