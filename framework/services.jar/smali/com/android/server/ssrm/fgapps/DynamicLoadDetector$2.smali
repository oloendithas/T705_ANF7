.class Lcom/android/server/ssrm/fgapps/DynamicLoadDetector$2;
.super Ljava/lang/Object;
.source "DynamicLoadDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector$2;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector$2;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->shiftSiopTable(Z)V

    .line 111
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector$2;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->scheduleMonitoring(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector$2;->this$0:Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;

    iget-object v1, v1, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSiopShiftRunnable:: e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
