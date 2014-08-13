.class public Lcom/android/systemui/recent/RecentsActivity$PersonalModeObserver;
.super Landroid/database/ContentObserver;
.source "RecentsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PersonalModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsActivity;)V
    .locals 1

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsActivity$PersonalModeObserver;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    .line 374
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 375
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 379
    const-string v0, "STATUSBAR-RecentsPanel"

    const-string v1, "onChange()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsActivity$PersonalModeObserver;->this$0:Lcom/android/systemui/recent/RecentsActivity;

    # invokes: Lcom/android/systemui/recent/RecentsActivity;->updateState()V
    invoke-static {v0}, Lcom/android/systemui/recent/RecentsActivity;->access$300(Lcom/android/systemui/recent/RecentsActivity;)V

    .line 381
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 382
    return-void
.end method
