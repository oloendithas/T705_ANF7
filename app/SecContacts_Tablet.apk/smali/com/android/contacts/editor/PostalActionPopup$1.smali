.class Lcom/android/contacts/editor/PostalActionPopup$1;
.super Landroid/os/Handler;
.source "PostalActionPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/PostalActionPopup;-><init>(Landroid/content/Context;Lcom/android/contacts/editor/TextFieldsEditorView;)V
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
    .line 86
    iput-object p1, p0, Lcom/android/contacts/editor/PostalActionPopup$1;->this$0:Lcom/android/contacts/editor/PostalActionPopup;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/contacts/editor/PostalActionPopup$1;->this$0:Lcom/android/contacts/editor/PostalActionPopup;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/PostalActionPopup;->deliverNotification(Landroid/database/Cursor;)V

    .line 90
    return-void
.end method
