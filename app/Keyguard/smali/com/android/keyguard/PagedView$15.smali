.class Lcom/android/keyguard/PagedView$15;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Lcom/android/keyguard/sec/AirGestureMonitor$AirGestureMonitorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PagedView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PagedView;)V
    .registers 2

    .prologue
    .line 2889
    iput-object p1, p0, Lcom/android/keyguard/PagedView$15;->this$0:Lcom/android/keyguard/PagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAirMove(Z)V
    .registers 3
    .param p1, "isLeft"    # Z

    .prologue
    .line 2892
    iget-object v0, p0, Lcom/android/keyguard/PagedView$15;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/PagedView;->moveByAirMove(Z)V

    .line 2893
    return-void
.end method
