.class public Lcom/sec/android/inputmethod/SuggestionPickReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SuggestionPickReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.text.style.SUGGESTION_PICKED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 17
    const-string v3, "after"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 18
    .local v2, "suggestion":Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v1

    .line 19
    .local v1, "inputManager":Lcom/diotek/ime/framework/common/InputManager;
    if-eqz v1, :cond_0

    .line 20
    invoke-interface {v1, v2}, Lcom/diotek/ime/framework/common/InputManager;->suggestionPicked(Ljava/lang/String;)V

    .line 23
    .end local v1    # "inputManager":Lcom/diotek/ime/framework/common/InputManager;
    .end local v2    # "suggestion":Ljava/lang/String;
    :cond_0
    return-void
.end method
