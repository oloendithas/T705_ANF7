.class Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$4;
.super Ljava/lang/Object;
.source "CircleUnlockRippleRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;)V
    .registers 2

    .prologue
    .line 2010
    iput-object p1, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$4;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer$4;->this$0:Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/CircleUnlockRippleRenderer;->clearAllEffect()V

    .line 2014
    return-void
.end method
