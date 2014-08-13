.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$14;
.super Landroid/database/ContentObserver;
.source "SpeedDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 2123
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$14;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$14;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsSpeedDialInBg:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1102(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Z)Z

    .line 2126
    return-void
.end method
