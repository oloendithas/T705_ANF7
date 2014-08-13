.class Lcom/sec/android/app/contacts/uce/VideoCallDialogue$4;
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
    .line 145
    iput-object p1, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$4;->this$0:Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$4;->this$0:Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    # invokes: Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->enableVideoCall()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->access$400(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$4;->this$0:Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    # invokes: Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->placeVideoCall()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/uce/VideoCallDialogue;->access$300(Lcom/sec/android/app/contacts/uce/VideoCallDialogue;)V

    .line 155
    return-void
.end method
