.class Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$47;
.super Landroid/content/BroadcastReceiver;
.source "SamsungKeypadSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;)V
    .locals 0

    .prologue
    .line 2533
    iput-object p1, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$47;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2536
    iget-object v0, p0, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment$47;->this$0:Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/SamsungKeypadSettingsFragment;->onResume()V

    .line 2537
    return-void
.end method
