.class Lcom/android/server/ssrm/settings/Level$1;
.super Ljava/lang/Object;
.source "Level.java"

# interfaces
.implements Lcom/android/server/ssrm/settings/BatteryControllerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/settings/Level;->initialize(Lcom/android/server/ssrm/settings/BatteryControllerFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/settings/Level;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/settings/Level;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/server/ssrm/settings/Level$1;->this$0:Lcom/android/server/ssrm/settings/Level;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBatteryState(II)Lcom/android/server/ssrm/settings/BatteryState;
    .locals 1
    .param p1, "id"    # I
    .param p2, "topTemperature"    # I

    .prologue
    .line 54
    new-instance v0, Lcom/android/server/ssrm/settings/BatteryState;

    invoke-direct {v0, p1, p2}, Lcom/android/server/ssrm/settings/BatteryState;-><init>(II)V

    return-object v0
.end method

.method public createBatteryStatesController()Lcom/android/server/ssrm/settings/BatteryStatesController;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;

    invoke-direct {v0}, Lcom/android/server/ssrm/settings/BatteryStatesControllerDefault;-><init>()V

    return-object v0
.end method
