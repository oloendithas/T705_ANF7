.class final Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field background:I

.field createdPanelView:Landroid/view/View;

.field decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field frozenMenuState:Landroid/os/Bundle;

.field fullBackground:I

.field gravity:I

.field iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

.field isCompact:Z

.field isHandled:Z

.field isInExpandedMode:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

.field listPresenterTheme:I

.field menu:Lcom/android/internal/view/menu/MenuBuilder;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field wasLastExpanded:Z

.field wasLastOpen:Z

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .registers 3
    .param p1, "featureId"    # I

    .prologue
    .line 3959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3960
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    .line 3962
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 3963
    return-void
.end method


# virtual methods
.method applyFrozenState()V
    .registers 3

    .prologue
    .line 4105
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    if-eqz v0, :cond_12

    .line 4106
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->restorePresenterStates(Landroid/os/Bundle;)V

    .line 4107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 4109
    :cond_12
    return-void
.end method

.method public clearMenuPresenters()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 3984
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_13

    .line 3985
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3986
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 3988
    :cond_13
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    .line 3989
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    .line 3990
    return-void
.end method

.method getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 4057
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v1, :cond_6

    const/4 v0, 0x0

    .line 4068
    :goto_5
    return-object v0

    .line 4059
    :cond_6
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-nez v1, :cond_25

    .line 4060
    new-instance v1, Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-direct {v1, p1}, Lcom/android/internal/view/menu/IconMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    .line 4061
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 4062
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    const v2, 0x10202b8

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->setId(I)V

    .line 4063
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 4066
    :cond_25
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    .line 4068
    .local v0, "result":Lcom/android/internal/view/menu/MenuView;
    goto :goto_5
.end method

.method getListMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 4023
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-nez v2, :cond_6

    const/4 v1, 0x0

    .line 4053
    :goto_5
    return-object v1

    .line 4025
    :cond_6
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-nez v2, :cond_d

    .line 4026
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->getIconMenuView(Landroid/content/Context;Lcom/android/internal/view/menu/MenuPresenter$Callback;)Lcom/android/internal/view/menu/MenuView;

    .line 4029
    :cond_d
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-nez v2, :cond_45

    .line 4031
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4032
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101046e

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 4033
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_5d

    .line 4034
    new-instance v2, Lcom/android/internal/view/menu/ListMenuPresenter;

    const v3, 0x1090100

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    invoke-direct {v2, v3, v4}, Lcom/android/internal/view/menu/ListMenuPresenter;-><init>(II)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    .line 4042
    :goto_31
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, p2}, Lcom/android/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 4043
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    const v3, 0x10202b9

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ListMenuPresenter;->setId(I)V

    .line 4044
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 4047
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_45
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v2, :cond_54

    .line 4048
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/IconMenuPresenter;->getNumActualItemsShown()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ListMenuPresenter;->setItemIndexOffset(I)V

    .line 4051
    :cond_54
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    .line 4053
    .local v1, "result":Lcom/android/internal/view/menu/MenuView;
    goto :goto_5

    .line 4038
    .end local v1    # "result":Lcom/android/internal/view/menu/MenuView;
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    :cond_5d
    new-instance v2, Lcom/android/internal/view/menu/ListMenuPresenter;

    const v3, 0x109006f

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    invoke-direct {v2, v3, v4}, Lcom/android/internal/view/menu/ListMenuPresenter;-><init>(II)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    goto :goto_31
.end method

.method public hasPanelItems()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3970
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    if-nez v0, :cond_8

    move v1, v2

    .line 3976
    :cond_7
    :goto_7
    return v1

    .line 3971
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    if-nez v0, :cond_7

    .line 3973
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-eqz v0, :cond_25

    .line 3974
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_23

    move v0, v1

    :goto_21
    move v1, v0

    goto :goto_7

    :cond_23
    move v0, v2

    goto :goto_21

    .line 3976
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_7

    move v1, v2

    goto :goto_7
.end method

.method public isInListMode()Z
    .registers 2

    .prologue
    .line 3966
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v2, 0x0

    .line 4086
    move-object v0, p1

    check-cast v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;

    .line 4087
    .local v0, "savedState":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;
    iget v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    .line 4088
    iget-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    .line 4089
    iget-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    .line 4090
    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 4099
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 4100
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 4101
    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 4102
    return-void
.end method

.method onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 4072
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$1;)V

    .line 4073
    .local v0, "savedState":Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    iput v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    .line 4074
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    .line 4075
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    .line 4077
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_24

    .line 4078
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 4079
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v2, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->savePresenterStates(Landroid/os/Bundle;)V

    .line 4082
    :cond_24
    return-object v0
.end method

.method setMenu(Lcom/android/internal/view/menu/MenuBuilder;)V
    .registers 4
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 4009
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_5

    .line 4020
    :cond_4
    :goto_4
    return-void

    .line 4011
    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_17

    .line 4012
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 4013
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 4015
    :cond_17
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 4016
    if-eqz p1, :cond_4

    .line 4017
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->iconMenuPresenter:Lcom/android/internal/view/menu/IconMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 4018
    :cond_24
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listMenuPresenter:Lcom/android/internal/view/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    goto :goto_4
.end method

.method setStyle(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 3993
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3994
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->background:I

    .line 3996
    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 3998
    const/16 v1, 0x5d

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->windowAnimations:I

    .line 4000
    const/16 v1, 0xef

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isCompact:Z

    .line 4002
    const/16 v1, 0xf1

    const v2, 0x1030330

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->listPresenterTheme:I

    .line 4005
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4006
    return-void
.end method
