.class Lcom/sec/android/app/contacts/uce/VideoCallDialogue$3;
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
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/contacts/uce/VideoCallDialogue$3;->this$0:Lcom/sec/android/app/contacts/uce/VideoCallDialogue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 168
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 170
    return-void
.end method
