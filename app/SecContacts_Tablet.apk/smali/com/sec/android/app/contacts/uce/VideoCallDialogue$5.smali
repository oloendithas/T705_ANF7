.class Lcom/sec/android/app/contacts/uce/VideoCallDialogue$5;
.super Ljava/lang/Object;
.source "VideoCallDialogue.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->showVideoCallDialogue(Landroid/content/Context;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/uce/VideoCallDialogue;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$5;->this$0:Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v2, 0x1

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$5;->this$0:Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    # invokes: Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->enableMobileData(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->access$500(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;Z)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$5;->this$0:Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    # invokes: Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->isVoiceOverLTEEnabled()Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->access$600(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$5;->this$0:Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    # getter for: Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->access$200()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->showVideoCallDialogue(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 222
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$5;->this$0:Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    # invokes: Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->isVideoCallEnabled()Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->access$100(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$5;->this$0:Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    # getter for: Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->access$200()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->showVideoCallDialogue(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$5;->this$0:Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    # invokes: Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->placeVideoCall()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->access$300(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;)V

    goto :goto_0
.end method
