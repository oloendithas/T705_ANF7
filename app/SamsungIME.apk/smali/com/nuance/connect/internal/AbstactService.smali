.class abstract Lcom/nuance/connect/internal/AbstactService;
.super Ljava/lang/Object;
.source "AbstactService.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getDependencies()[Lcom/nuance/connect/common/ConnectFeature;
.end method

.method abstract getHandlers()[Lcom/nuance/connect/internal/ConnectHandler;
.end method

.method abstract getServiceName()Ljava/lang/String;
.end method
