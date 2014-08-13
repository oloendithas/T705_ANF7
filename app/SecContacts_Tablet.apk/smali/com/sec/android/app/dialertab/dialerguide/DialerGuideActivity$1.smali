.class Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DialerGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 118
    const-string v1, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    # setter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mEasyMode:Z
    invoke-static {v1, v0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$002(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;Z)Z

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # invokes: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setGuideContentView()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$100(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # invokes: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setupDialer()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$200(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # invokes: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setupCallLog()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$300(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # getter for: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->mEasyMode:Z
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$000(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # invokes: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setupFavorites()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$400(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # invokes: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setupContacts()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$500(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity$1;->this$0:Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;

    # invokes: Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->setEmbeddedTabs()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;->access$600(Lcom/sec/android/app/dialertab/dialerguide/DialerGuideActivity;)V

    .line 133
    :cond_1
    return-void

    .line 119
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
