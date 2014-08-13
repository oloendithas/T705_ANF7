.class public Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;
.super Ljava/lang/Object;
.source "RemoteControllerManager.java"


# static fields
.field private static final KEYCODE_BACK_ACTION:I = 0x4

.field private static final KEYCODE_DOWN_ACTION:I = 0x14

.field private static final KEYCODE_ENTER_ACTION:I = 0x42

.field private static final KEYCODE_LEFT_ACTION:I = 0x15

.field private static final KEYCODE_RIGHT_ACTION:I = 0x16

.field private static final KEYCODE_UP_ACTION:I = 0x13

.field private static remoteControllerManager:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;


# instance fields
.field public final data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private remoteControllerState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 25
    new-instance v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->remoteControllerState:I

    .line 38
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->remoteControllerManager:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->remoteControllerManager:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;

    .line 45
    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->remoteControllerManager:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;

    return-object v0
.end method

.method private processDpadDownKeyDown(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->moveDownCurrentPosition()V

    .line 137
    return-void
.end method

.method private processDpadDownKeyDownForMinikeyboard(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->moveDownCurrentPositionForMinikeyboard()V

    .line 174
    return-void
.end method

.method private processDpadKeyDown(ILandroid/view/KeyEvent;)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->getCurrentFocusedKey()Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 105
    :cond_0
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->setRemoteControllerState(I)V

    .line 106
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->getCurrentFocusedKey()Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v1

    iget-object v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    .line 108
    packed-switch p1, :pswitch_data_0

    .line 123
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->setRemoteControllerState(I)V

    .line 124
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->getCurrentFocusedKey()Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v1

    iget-object v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->processDpadUpKeyDown(ILandroid/view/KeyEvent;)V

    goto :goto_1

    .line 113
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->processDpadDownKeyDown(ILandroid/view/KeyEvent;)V

    goto :goto_1

    .line 116
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->processDpadLeftKeyDown(ILandroid/view/KeyEvent;)V

    goto :goto_1

    .line 119
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->processDpadRightKeyDown(ILandroid/view/KeyEvent;)V

    goto :goto_1

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processDpadKeyDownOnMinikeyboardPopupState(ILandroid/view/KeyEvent;)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 144
    packed-switch p1, :pswitch_data_0

    .line 159
    :goto_0
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getFocusedKeyXForMinikeyboard()I

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    iget v2, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupX:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getFocusedKeyYForMinikeyboard()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    iget v3, v3, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->sendTouchEvent(III)V

    .line 162
    return-void

    .line 146
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->processDpadUpKeyDownForMinikeyboard(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 149
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->processDpadDownKeyDownForMinikeyboard(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 152
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->processDpadLeftKeyDownForMinikeyboard(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 155
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->processDpadRightKeyDownForMinikeyboard(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processDpadLeftKeyDown(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->moveLeftCurrentPosition()V

    .line 133
    return-void
.end method

.method private processDpadLeftKeyDownForMinikeyboard(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->moveLeftCurrentPositionForMinikeyboard()V

    .line 170
    return-void
.end method

.method private processDpadRightKeyDown(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->moveRightCurrentPosition()V

    .line 129
    return-void
.end method

.method private processDpadRightKeyDownForMinikeyboard(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->moveRightCurrentPositionForMinikeyboard()V

    .line 166
    return-void
.end method

.method private processDpadUpKeyDown(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->moveUpCurrentPosition()V

    .line 141
    return-void
.end method

.method private processDpadUpKeyDownForMinikeyboard(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->moveUpCurrentPositionForMinikeyboard()V

    .line 178
    return-void
.end method

.method private processKeyDownOnFocused(ILandroid/view/KeyEvent;)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 81
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getFocusedKeyX()I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getFocusedKeyY()I

    move-result v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->sendTouchEvent(III)V

    .line 84
    const/4 v0, 0x2

    iput v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->remoteControllerState:I

    .line 85
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->getCurrentFocusedKey()Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->getCurrentFocusedKey()Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v1

    iget-object v1, v1, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v1, v1, v2

    invoke-interface {v0, v1}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    goto :goto_0
.end method

.method private processKeyDownOnMinikeyboardPopup(ILandroid/view/KeyEvent;)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 94
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 95
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getFocusedKeyXForMinikeyboard()I

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    iget v2, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupX:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getFocusedKeyYForMinikeyboard()I

    move-result v2

    iget-object v3, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    iget v3, v3, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->sendTouchEvent(III)V

    .line 99
    :cond_0
    return-void
.end method

.method private processKeyUpOnFocused(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 217
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->setRemoteControllerState(I)V

    .line 220
    :cond_0
    return-void
.end method

.method private processKeyUpOnMinikeyboardPopup(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 231
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 232
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->setRemoteControllerState(I)V

    .line 234
    :cond_0
    return-void
.end method

.method private processKeyUpOnMinikeyboardPopupFocused(ILandroid/view/KeyEvent;)V
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 237
    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getFocusedKeyXForMinikeyboard()I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    iget v1, v1, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupX:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getFocusedKeyYForMinikeyboard()I

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    iget v2, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupY:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v3, v0, v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->sendTouchEvent(III)V

    .line 241
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->setRemoteControllerState(I)V

    .line 242
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    .line 243
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->releaseKeyDataForMiniKeyboard()V

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 245
    invoke-virtual {p0, v3}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->setRemoteControllerState(I)V

    .line 246
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    .line 247
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->releaseKeyDataForMiniKeyboard()V

    goto :goto_0
.end method

.method private processKeyUpOnNoneState(ILandroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 211
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->setRemoteControllerState(I)V

    .line 214
    :cond_0
    return-void
.end method

.method private processKeyUpOnPressed(ILandroid/view/KeyEvent;)V
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 223
    const/16 v0, 0x42

    if-ne p1, v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getFocusedKeyX()I

    move-result v0

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getFocusedKeyY()I

    move-result v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->sendTouchEvent(III)V

    .line 226
    invoke-virtual {p0, v2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->setRemoteControllerState(I)V

    .line 228
    :cond_0
    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    const-string v1, "Object should not be cloned."

    invoke-direct {v0, v1}, Ljava/lang/CloneNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createKeyMap(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Key;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "keyboardKeyList":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    if-eqz p1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v0, p1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->initialize(Ljava/util/List;)V

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->setRemoteControllerState(I)V

    .line 260
    :cond_0
    return-void
.end method

.method public createKeyMapForMinikeyboard(Ljava/util/List;II)V
    .locals 3
    .param p2, "popupX"    # I
    .param p3, "popupY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/diotek/ime/framework/view/Keyboard$Key;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "keyboardKeyListForMinikeyboard":Ljava/util/List;, "Ljava/util/List<Lcom/diotek/ime/framework/view/Keyboard$Key;>;"
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v0, p1, p2, p3}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->initializeForMinikeyboard(Ljava/util/List;II)V

    .line 264
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getFocusedKeyXForMinikeyboard()I

    move-result v1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    iget v2, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupX:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    iget v2, v2, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->mPopupY:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->sendTouchEvent(III)V

    .line 267
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->setRemoteControllerState(I)V

    .line 268
    return-void
.end method

.method public getCurrentFocusedKey()Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getCurrentFocusedKey()Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFocusedKeyForMinikeyboard()Lcom/diotek/ime/framework/view/Keyboard$Key;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->data:Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerDataStructure;->getCurrentFocusedKeyForMinikeyboard()Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteControllerState()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->remoteControllerState:I

    return v0
.end method

.method public isEnableRemoteController()Z
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public isMinikeyboardPopupFocusedState()Z
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->getRemoteControllerState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThisKeyDpadKey(I)Z
    .locals 1
    .param p1, "keyCode"    # I

    .prologue
    .line 287
    packed-switch p1, :pswitch_data_0

    .line 294
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 292
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isThisKeyRemoteControllerKey(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 271
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->isThisKeyDpadKey(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 274
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 283
    goto :goto_0

    .line 278
    :sswitch_1
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->getRemoteControllerState()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 279
    goto :goto_0

    .line 274
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->isThisKeyDpadKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->isMinikeyboardPopupFocusedState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->processDpadKeyDownOnMinikeyboardPopupState(ILandroid/view/KeyEvent;)V

    .line 76
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 58
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->processDpadKeyDown(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 61
    :cond_1
    iget v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->remoteControllerState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 65
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->processKeyDownOnFocused(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 72
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->processKeyDownOnMinikeyboardPopup(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-virtual {p0, p1}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->isThisKeyDpadKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    :goto_0
    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->getCurrentFocusedKey()Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v1

    if-nez v1, :cond_1

    .line 207
    :goto_1
    return v0

    .line 184
    :cond_0
    iget v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->remoteControllerState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 186
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->processKeyUpOnNoneState(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 189
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->processKeyUpOnFocused(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 192
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->processKeyUpOnPressed(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 195
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->processKeyUpOnMinikeyboardPopup(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 198
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->processKeyUpOnMinikeyboardPopupFocused(ILandroid/view/KeyEvent;)V

    goto :goto_0

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-virtual {p0}, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->getCurrentFocusedKey()Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-result-object v2

    iget-object v2, v2, Lcom/diotek/ime/framework/view/Keyboard$Key;->codes:[I

    aget v0, v2, v0

    invoke-interface {v1, v0}, Lcom/diotek/ime/framework/common/InputManager;->invalidateKey(I)V

    .line 207
    const/4 v0, 0x1

    goto :goto_1

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public sendTouchEvent(III)V
    .locals 9
    .param p1, "action"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I

    .prologue
    const/4 v7, 0x0

    .line 306
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-float v5, p2

    int-to-float v6, p3

    move v4, p1

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 311
    .local v8, "motionEvent":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v0, v8, v7}, Lcom/diotek/ime/framework/common/InputManager;->sendTouchEvent(Landroid/view/MotionEvent;Z)V

    .line 312
    return-void
.end method

.method public setRemoteControllerState(I)V
    .locals 0
    .param p1, "remoteControllerState"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/diotek/ime/framework/input/remoteController/RemoteControllerManager;->remoteControllerState:I

    .line 35
    return-void
.end method
