.class Lcom/diotek/ime/framework/common/InputManagerImpl$1;
.super Ljava/lang/Object;
.source "InputManagerImpl.java"

# interfaces
.implements Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificationStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/framework/common/InputManagerImpl;->initModules()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/diotek/ime/framework/common/InputManagerImpl;)V
    .locals 0

    .prologue
    .line 1122
    iput-object p1, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$1;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangedMagnificationState(Z)V
    .locals 2
    .param p1, "magnified"    # Z

    .prologue
    .line 1125
    # setter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mEnabledMagnification:Z
    invoke-static {p1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$002(Z)Z

    .line 1126
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$1;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1127
    if-eqz p1, :cond_4

    .line 1128
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ENG_MODE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DBG_LEVEL_VERBOSE:Z

    if-eqz v0, :cond_1

    .line 1129
    :cond_0
    const-string v0, "SamsungIME"

    const-string v1, " [IMI] Enabled Magnification = true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$1;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/diotek/ime/framework/common/InputManagerImpl;->updateSytemOneHandOperationSetting(Z)V

    .line 1140
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/diotek/ime/framework/common/InputManagerImpl$1;->this$0:Lcom/diotek/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/diotek/ime/framework/common/InputManagerImpl;->mViewController:Lcom/diotek/ime/framework/view/ViewController;
    invoke-static {v0}, Lcom/diotek/ime/framework/common/InputManagerImpl;->access$100(Lcom/diotek/ime/framework/common/InputManagerImpl;)Lcom/diotek/ime/framework/view/ViewController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/diotek/ime/framework/view/ViewController;->onMagnifyStateChanged(Z)V

    .line 1142
    :cond_3
    return-void

    .line 1135
    :cond_4
    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->ENG_MODE:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/diotek/ime/framework/util/Debug;->DBG_LEVEL_VERBOSE:Z

    if-eqz v0, :cond_2

    .line 1136
    :cond_5
    const-string v0, "SamsungIME"

    const-string v1, " [IMI] Enabled Magnification = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
