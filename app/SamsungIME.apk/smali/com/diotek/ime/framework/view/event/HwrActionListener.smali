.class public Lcom/diotek/ime/framework/view/event/HwrActionListener;
.super Ljava/lang/Object;
.source "HwrActionListener.java"


# instance fields
.field mInputManager:Lcom/diotek/ime/framework/common/InputManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/event/HwrActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 11
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/view/event/HwrActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 12
    return-void
.end method


# virtual methods
.method public onTouchCancel(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 27
    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/HwrActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/common/InputManager;->onHwrTouchCancel(IIJ)Z

    move-result v0

    return v0
.end method

.method public onTouchDown(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 15
    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/HwrActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/common/InputManager;->onHwrTouchDown(IIJ)Z

    move-result v0

    return v0
.end method

.method public onTouchMove(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 19
    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/HwrActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/common/InputManager;->onHwrTouchMove(IIJ)Z

    move-result v0

    return v0
.end method

.method public onTouchUp(IIJ)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "eventTime"    # J

    .prologue
    .line 23
    iget-object v0, p0, Lcom/diotek/ime/framework/view/event/HwrActionListener;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/diotek/ime/framework/common/InputManager;->onHwrTouchUp(IIJ)Z

    move-result v0

    return v0
.end method
