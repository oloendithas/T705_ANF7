.class public Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$SamsungPolicyOnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SamsungPolicyGestureDetectorWrapper.java"

# interfaces
.implements Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper$OnFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPolicyGestureDetectorWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamsungPolicyOnGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 34
    return-void
.end method
