.class public Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;
.super Lcom/sec/android/app/camera/command/MenuCommand;
.source "LaunchSliderMenuCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LaunchSliderMenuCommand"


# instance fields
.field private final mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private final mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

.field private final mParentView:Lcom/sec/android/glview/TwGLViewGroup;

.field private final mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

.field private mSlideDirection:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V
    .locals 1
    .param p1, "activityContext"    # Lcom/sec/android/app/camera/Camera;
    .param p2, "glParentView"    # Lcom/sec/android/glview/TwGLViewGroup;
    .param p3, "menuDepot"    # Lcom/sec/android/app/camera/MenuResourceDepot;
    .param p4, "res"    # Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sec/android/app/camera/command/MenuCommand;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mSlideDirection:I

    .line 42
    iput-object p1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 43
    iput-object p2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    .line 44
    iput-object p3, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    .line 45
    iput-object p4, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    .line 46
    return-void
.end method


# virtual methods
.method public execute()Z
    .locals 12

    .prologue
    const/16 v11, 0xbc5

    const/16 v10, 0x12

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 59
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "LaunchSliderMenuCommand"

    const-string v2, "return getIsLaunchGallery.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 99
    :goto_0
    return v1

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const-string v1, "LaunchSliderMenuCommand"

    const-string v2, "return isCapturing.."

    invoke-static {v1, v2}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v8

    .line 66
    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .line 70
    .local v0, "menu":Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 71
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .end local v0    # "menu":Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 72
    .restart local v0    # "menu":Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setOnExposureValueChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnExposureValueMenuSelectListener;)V

    .line 73
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_2
    :goto_1
    if-nez v0, :cond_6

    move v1, v8

    .line 85
    goto :goto_0

    .line 74
    :cond_3
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    if-eq v1, v10, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    if-ne v1, v11, :cond_5

    .line 75
    :cond_4
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .end local v0    # "menu":Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 76
    .restart local v0    # "menu":Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setOnZoomValueChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnZoomValueMenuSelectListener;)V

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 78
    :cond_5
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_2

    .line 79
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;

    .end local v0    # "menu":Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mParentView:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v4, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    iget-object v5, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget v6, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mZOrder:I

    iget v7, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mSlideDirection:I

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;Lcom/sec/android/app/camera/MenuResourceDepot;II)V

    .line 80
    .restart local v0    # "menu":Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setOnBeautyLevelChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu$OnBeautyLevelMenuSelectListener;)V

    .line 81
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mMenuDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v1, v1, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 87
    :cond_6
    iget v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mZOrder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setZorder(I)V

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 90
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->isActive()Z

    move-result v1

    if-nez v1, :cond_8

    .line 91
    iget v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mZOrder:I

    if-le v1, v9, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    if-eq v1, v10, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mResourceData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;->getId()I

    move-result v1

    if-eq v1, v11, :cond_7

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v9}, Lcom/sec/android/app/camera/Camera;->popMenu(I)V

    .line 95
    :cond_7
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLSliderMenu;->showMenu()V

    .line 99
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 97
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_2
.end method

.method public setSliderDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mSlideDirection:I

    .line 55
    return-void
.end method

.method public setZOrder(I)V
    .locals 0
    .param p1, "zOrder"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->mZOrder:I

    .line 51
    return-void
.end method
