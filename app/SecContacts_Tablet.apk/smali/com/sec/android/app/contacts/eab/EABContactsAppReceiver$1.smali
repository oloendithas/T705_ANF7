.class Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "EABContactsAppReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver$1;->this$0:Lcom/sec/android/app/contacts/eab/EABContactsAppReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    return-void
.end method
