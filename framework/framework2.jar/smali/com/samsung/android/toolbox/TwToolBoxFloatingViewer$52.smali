.class Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$52;
.super Ljava/lang/Object;
.source "TwToolBoxFloatingViewer.java"

# interfaces
.implements Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->initializeFunctionShortcut(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;


# direct methods
.method constructor <init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .registers 2

    .prologue
    .line 2044
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$52;->this$0:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction()V
    .registers 7

    .prologue
    .line 2047
    :try_start_0
    const-string v3, "BezelInteractionService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/bezelinteraction/IBezelManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bezelinteraction/IBezelManager;

    move-result-object v1

    .line 2048
    .local v1, "bm":Lcom/samsung/android/bezelinteraction/IBezelManager;
    new-instance v0, Lcom/samsung/android/bezelinteraction/BezelEvent;

    invoke-direct {v0}, Lcom/samsung/android/bezelinteraction/BezelEvent;-><init>()V

    .line 2049
    .local v0, "bezelEvent":Lcom/samsung/android/bezelinteraction/BezelEvent;
    const/4 v3, 0x1

    iput v3, v0, Lcom/samsung/android/bezelinteraction/BezelEvent;->type:I

    .line 2050
    invoke-interface {v1, v0}, Lcom/samsung/android/bezelinteraction/IBezelManager;->selectedItemCallback(Lcom/samsung/android/bezelinteraction/BezelEvent;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 2054
    .end local v0    # "bezelEvent":Lcom/samsung/android/bezelinteraction/BezelEvent;
    .end local v1    # "bm":Lcom/samsung/android/bezelinteraction/IBezelManager;
    :goto_15
    return-void

    .line 2051
    :catch_16
    move-exception v2

    .line 2052
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuickConnect Runtime error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method