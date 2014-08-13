.class Lcom/android/systemui/cooldown/SafeMode$1;
.super Ljava/lang/Object;
.source "SafeMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/cooldown/SafeMode;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cooldown/SafeMode;


# direct methods
.method constructor <init>(Lcom/android/systemui/cooldown/SafeMode;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/systemui/cooldown/SafeMode$1;->this$0:Lcom/android/systemui/cooldown/SafeMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 86
    const-string v2, "SafeMode"

    const-string v3, "click Turn off"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_CONFIRM"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    iget-object v2, p0, Lcom/android/systemui/cooldown/SafeMode$1;->this$0:Lcom/android/systemui/cooldown/SafeMode;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 93
    const-string v2, "SafeMode"

    const-string v3, "Sent REBOOT signal"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e1":Ljava/lang/Exception;
    const-string v2, "SafeMode"

    const-string v3, "Can\'t Broad cast to REBOOT by unkown reason"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
