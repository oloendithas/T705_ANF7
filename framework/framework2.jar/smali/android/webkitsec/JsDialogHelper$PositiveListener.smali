.class Landroid/webkitsec/JsDialogHelper$PositiveListener;
.super Ljava/lang/Object;
.source "JsDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/JsDialogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositiveListener"
.end annotation


# instance fields
.field private final mEdit:Landroid/widget/EditText;

.field final synthetic this$0:Landroid/webkitsec/JsDialogHelper;


# direct methods
.method public constructor <init>(Landroid/webkitsec/JsDialogHelper;Landroid/widget/EditText;)V
    .registers 3
    .param p2, "edit"    # Landroid/widget/EditText;

    .prologue
    .line 165
    iput-object p1, p0, Landroid/webkitsec/JsDialogHelper$PositiveListener;->this$0:Landroid/webkitsec/JsDialogHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Landroid/webkitsec/JsDialogHelper$PositiveListener;->mEdit:Landroid/widget/EditText;

    .line 167
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 171
    iget-object v0, p0, Landroid/webkitsec/JsDialogHelper$PositiveListener;->mEdit:Landroid/widget/EditText;

    if-nez v0, :cond_e

    .line 172
    iget-object v0, p0, Landroid/webkitsec/JsDialogHelper$PositiveListener;->this$0:Landroid/webkitsec/JsDialogHelper;

    # getter for: Landroid/webkitsec/JsDialogHelper;->mResult:Landroid/webkitsec/JsPromptResult;
    invoke-static {v0}, Landroid/webkitsec/JsDialogHelper;->access$200(Landroid/webkitsec/JsDialogHelper;)Landroid/webkitsec/JsPromptResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/JsResult;->confirm()V

    .line 176
    :goto_d
    return-void

    .line 174
    :cond_e
    iget-object v0, p0, Landroid/webkitsec/JsDialogHelper$PositiveListener;->this$0:Landroid/webkitsec/JsDialogHelper;

    # getter for: Landroid/webkitsec/JsDialogHelper;->mResult:Landroid/webkitsec/JsPromptResult;
    invoke-static {v0}, Landroid/webkitsec/JsDialogHelper;->access$200(Landroid/webkitsec/JsDialogHelper;)Landroid/webkitsec/JsPromptResult;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/JsDialogHelper$PositiveListener;->mEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkitsec/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_d
.end method
