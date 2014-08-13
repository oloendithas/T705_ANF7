.class Lcom/android/contacts/editor/PostalActionPopup$5;
.super Ljava/lang/Object;
.source "PostalActionPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PostalActionPopup;->showPopupMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/PostalActionPopup;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/PostalActionPopup;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/contacts/editor/PostalActionPopup$5;->this$0:Lcom/android/contacts/editor/PostalActionPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 254
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 255
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/contacts/editor/PostalActionPopup;->setButtonEnable(Z)V

    .line 256
    iget-object v0, p0, Lcom/android/contacts/editor/PostalActionPopup$5;->this$0:Lcom/android/contacts/editor/PostalActionPopup;

    invoke-virtual {v0}, Lcom/android/contacts/editor/PostalActionPopup;->quit()Z

    .line 257
    return-void
.end method
