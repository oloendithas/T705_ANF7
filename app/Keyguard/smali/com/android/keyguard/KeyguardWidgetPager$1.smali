.class Lcom/android/keyguard/KeyguardWidgetPager$1;
.super Landroid/os/Handler;
.source "KeyguardWidgetPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardWidgetPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardWidgetPager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardWidgetPager;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetPager$1;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager$1;->this$0:Lcom/android/keyguard/KeyguardWidgetPager;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/KeyguardWidgetPager;->mIsWakeupBlocked:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->access$002(Lcom/android/keyguard/KeyguardWidgetPager;Z)Z

    .line 127
    return-void
.end method
