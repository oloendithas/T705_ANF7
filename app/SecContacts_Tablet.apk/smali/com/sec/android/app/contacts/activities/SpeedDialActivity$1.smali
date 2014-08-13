.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;
.super Landroid/os/Handler;
.source "SpeedDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # invokes: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->FreshView()V
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    .line 303
    return-void
.end method
