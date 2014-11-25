.class Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiPhoneWindowListener"
.end annotation


# instance fields
.field private interporation:I

.field private lastMoveX:I

.field private lastMoveY:I

.field private moving:Z

.field private sipHiding:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 981
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->interporation:I

    .line 978
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->moving:Z

    .line 979
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->sipHiding:Z

    .line 982
    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->interporation:I

    .line 983
    return-void
.end method

.method private action_down(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1087
    iput p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveX:I

    .line 1088
    iput p2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveY:I

    .line 1089
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_27

    .line 1090
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1091
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1100(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V

    .line 1093
    :cond_27
    return-void
.end method

.method private action_move(II)V
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1096
    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveX:I

    sub-int v0, p1, v2

    .line 1097
    .local v0, "dx":I
    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveY:I

    sub-int v1, p2, v2

    .line 1099
    .local v1, "dy":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1c

    .line 1100
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v3, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->moveStackBound(IIZ)V
    invoke-static {v2, v0, v1, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4200(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)V

    .line 1105
    :goto_17
    iput p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveX:I

    .line 1106
    iput p2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveY:I

    .line 1107
    return-void

    .line 1102
    :cond_1c
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1103
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v3

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->showGuide(Landroid/graphics/Rect;)V
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1100(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;)V

    goto :goto_17
.end method

.method private action_up(II)V
    .registers 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1110
    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveX:I

    sub-int v0, p1, v2

    .line 1111
    .local v0, "dx":I
    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveY:I

    sub-int v1, p2, v2

    .line 1113
    .local v1, "dy":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_18

    .line 1114
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v3, 0x0

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->moveStackBound(IIZ)V
    invoke-static {v2, v0, v1, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4200(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)V

    .line 1120
    :goto_17
    return-void

    .line 1116
    :cond_18
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1117
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mTmpBound:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBound(Landroid/graphics/Rect;Z)V
    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;Landroid/graphics/Rect;Z)V

    goto :goto_17
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 987
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_6c

    .line 1017
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 989
    :pswitch_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 990
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->minimizeWindow(Landroid/os/IBinder;)V

    goto :goto_8

    .line 992
    :cond_21
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v1, v2, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->minimizeWindow(IZ)V

    goto :goto_8

    .line 997
    :pswitch_27
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v2, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    goto :goto_8

    .line 1001
    :pswitch_2e
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1002
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    move-result-object v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;->onWindowExit()Z

    move-result v1

    if-nez v1, :cond_52

    .line 1004
    const-string v1, "MultiPhoneWindow"

    const-string v2, "onWindowExit return false"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1008
    :cond_52
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    .line 1010
    :try_start_57
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finishAffinity()V
    :try_end_60
    .catch Ljava/lang/IllegalStateException; {:try_start_57 .. :try_end_60} :catch_61

    goto :goto_8

    .line 1011
    :catch_61
    move-exception v0

    .line 1012
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_8

    .line 987
    :pswitch_data_6c
    .packed-switch 0x1020356
        :pswitch_9
        :pswitch_8
        :pswitch_27
        :pswitch_8
        :pswitch_2e
    .end packed-switch
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020354

    if-eq v1, v2, :cond_b

    .line 1137
    :cond_a
    :goto_a
    return v3

    .line 1129
    :cond_b
    :try_start_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_22

    .line 1130
    const/4 v1, 0x5

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_a

    .line 1134
    :catch_19
    move-exception v0

    .line 1135
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiPhoneWindow"

    const-string v2, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1131
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_22
    :try_start_22
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    .line 1132
    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2f} :catch_19

    goto :goto_a
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1023
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_13e

    move v1, v2

    .line 1084
    :cond_b
    :goto_b
    return v1

    .line 1025
    :pswitch_c
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(Z)V
    invoke-static {v3, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$500(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)V

    .line 1026
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->moving:Z

    .line 1027
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->sipHiding:Z

    .line 1028
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->forceHideInputMethod()Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1029
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->sipHiding:Z

    goto :goto_b

    .line 1032
    :cond_20
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_5c

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5c

    .line 1033
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1037
    :cond_3d
    :goto_3d
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/GuideView;

    move-result-object v3

    if-eqz v3, :cond_4e

    .line 1038
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mGuideView:Lcom/android/internal/policy/impl/GuideView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/GuideView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/GuideView;->setType(I)V

    .line 1040
    :cond_4e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->action_down(II)V

    goto :goto_b

    .line 1034
    :cond_5c
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3d

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3d

    .line 1035
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_3d

    .line 1044
    :pswitch_7a
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->sipHiding:Z

    if-nez v2, :cond_b

    .line 1047
    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveX:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->interporation:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_a4

    iget v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->lastMoveY:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->interporation:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_b

    .line 1049
    :cond_a4
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->moving:Z

    .line 1050
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->action_move(II)V

    goto/16 :goto_b

    .line 1056
    :pswitch_b5
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->sipHiding:Z

    if-nez v3, :cond_b

    .line 1059
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->moving:Z

    if-eqz v3, :cond_f9

    .line 1060
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->moving:Z

    .line 1061
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->action_up(II)V

    .line 1071
    :cond_cc
    :goto_cc
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_116

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_116

    .line 1072
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1073
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mWindowIconic:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3800(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->playSoundEffect(I)V

    .line 1078
    :cond_f2
    :goto_f2
    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->dismissGuide()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V

    goto/16 :goto_b

    .line 1062
    :cond_f9
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v3

    if-ne v3, v4, :cond_cc

    .line 1067
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 1068
    .local v0, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1069
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4100(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v4

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static {v3, v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3600(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    goto :goto_cc

    .line 1074
    .end local v0    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_116
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_f2

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_f2

    .line 1075
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1076
    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$MultiPhoneWindowListener;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mCustomMinimizeView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_f2

    .line 1023
    nop

    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b5
        :pswitch_7a
        :pswitch_b5
    .end packed-switch
.end method
