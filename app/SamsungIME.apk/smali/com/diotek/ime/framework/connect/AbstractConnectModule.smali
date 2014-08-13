.class public abstract Lcom/diotek/ime/framework/connect/AbstractConnectModule;
.super Ljava/lang/Object;
.source "AbstractConnectModule.java"

# interfaces
.implements Lcom/diotek/ime/framework/connect/ConnectModule;


# instance fields
.field protected mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 12
    iput-object v0, p0, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 13
    iput-object v0, p0, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 31
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 32
    invoke-static {}, Lcom/diotek/ime/framework/engine/InputEngineManagerImpl;->getInstance()Lcom/diotek/ime/framework/engine/InputEngineManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    .line 34
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public closing()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public resetPersonalizedData()S
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/diotek/ime/framework/connect/AbstractConnectModule;->mEngineManager:Lcom/diotek/ime/framework/engine/InputEngineManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/engine/InputEngineManager;->resetDLMData()S

    move-result v0

    return v0
.end method
