.class Lcom/android/keyguard/sec/KeyguardUnlockView$6;
.super Ljava/lang/Object;
.source "KeyguardUnlockView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardUnlockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardUnlockView;)V
    .registers 2

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$6;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardUnlockView$6;->this$0:Lcom/android/keyguard/sec/KeyguardUnlockView;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/sec/KeyguardUnlockView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
