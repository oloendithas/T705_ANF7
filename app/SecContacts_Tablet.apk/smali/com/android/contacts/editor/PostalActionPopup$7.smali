.class Lcom/android/contacts/editor/PostalActionPopup$7;
.super Landroid/os/Handler;
.source "PostalActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PostalActionPopup;->getHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/PostalActionPopup;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/PostalActionPopup;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/contacts/editor/PostalActionPopup$7;->this$0:Lcom/android/contacts/editor/PostalActionPopup;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/contacts/editor/PostalActionPopup$7;->this$0:Lcom/android/contacts/editor/PostalActionPopup;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/PostalActionPopup;->handleMessage(Landroid/os/Message;)V

    .line 360
    return-void
.end method
