.class Lcom/android/server/ssrm/Monitor$26;
.super Ljava/lang/Object;
.source "Monitor.java"

# interfaces
.implements Lcom/android/server/ssrm/Monitor$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/Monitor;->registerCommands()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;)V
    .locals 0

    .prologue
    .line 2060
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$26;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$26;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mAirViewOnOff:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    if-nez v0, :cond_1

    .line 2075
    :cond_0
    :goto_0
    return-void

    .line 2067
    :cond_1
    const-string v0, "PORTRAIT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2068
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setWindowOrientation:: WINDOW_ORIENTATION_PORTRAIT"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$26;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mAirViewOnOff:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->setWindowOrientation(I)V

    goto :goto_0

    .line 2070
    :cond_2
    const-string v0, "LANDSCAPE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2071
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setWindowOrientation:: WINDOW_ORIENTATION_LANDSCAPE"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2072
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$26;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mAirViewOnOff:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->setWindowOrientation(I)V

    goto :goto_0
.end method
