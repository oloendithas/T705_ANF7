.class Lcom/android/contacts/editor/PostalActionPopup$3;
.super Ljava/lang/Object;
.source "PostalActionPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PostalActionPopup;->loadPostalAdderss(Landroid/net/Uri;)V
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
    .line 180
    iput-object p1, p0, Lcom/android/contacts/editor/PostalActionPopup$3;->this$0:Lcom/android/contacts/editor/PostalActionPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 183
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    .line 184
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 185
    invoke-static {v0}, Lcom/android/contacts/editor/PostalActionPopup;->setButtonEnable(Z)V

    .line 188
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
