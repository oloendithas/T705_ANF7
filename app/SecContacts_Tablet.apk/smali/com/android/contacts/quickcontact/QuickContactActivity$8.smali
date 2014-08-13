.class Lcom/android/contacts/quickcontact/QuickContactActivity$8;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->verifyIsEasAddress()Z
    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v1

    # setter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mIsEASMode:Z
    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$002(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)Z

    .line 650
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$8;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mEASHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$1600(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 651
    return-void
.end method
