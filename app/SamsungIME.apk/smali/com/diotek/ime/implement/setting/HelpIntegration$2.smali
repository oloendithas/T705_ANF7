.class Lcom/diotek/ime/implement/setting/HelpIntegration$2;
.super Ljava/lang/Object;
.source "HelpIntegration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/HelpIntegration;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/HelpIntegration;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$2;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 268
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$2;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    const v4, 0x7f08006e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 269
    .local v0, "editText":Landroid/widget/EditText;
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$2;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 270
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 271
    iget-object v3, p0, Lcom/diotek/ime/implement/setting/HelpIntegration$2;->this$0:Lcom/diotek/ime/implement/setting/HelpIntegration;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "lastInputMethodId":Ljava/lang/String;
    const-string v3, "com.sec.android.inputmethod"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 274
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 275
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 278
    .end local v2    # "lastInputMethodId":Ljava/lang/String;
    :cond_0
    return-void
.end method