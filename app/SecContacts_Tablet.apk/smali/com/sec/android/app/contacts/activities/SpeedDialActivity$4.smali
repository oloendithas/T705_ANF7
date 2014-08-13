.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->onActivityResult(IILandroid/content/Intent;)V
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
    .line 1243
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1247
    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$4;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1252
    return-void

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
