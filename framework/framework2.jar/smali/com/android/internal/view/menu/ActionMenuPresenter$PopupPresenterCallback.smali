.class Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupPresenterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;


# direct methods
.method private constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .registers 2

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;Lcom/android/internal/view/menu/ActionMenuPresenter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/view/menu/ActionMenuPresenter;
    .param p2, "x1"    # Lcom/android/internal/view/menu/ActionMenuPresenter$1;

    .prologue
    .line 1089
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/android/internal/view/menu/ActionMenuPresenter;)V

    return-void
.end method


# virtual methods
.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .registers 6
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 1102
    instance-of v1, p1, Lcom/android/internal/view/menu/SubMenuBuilder;

    if-eqz v1, :cond_f

    move-object v1, p1

    .line 1103
    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 1105
    :cond_f
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getCallback()Lcom/android/internal/view/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 1106
    .local v0, "cb":Lcom/android/internal/view/menu/MenuPresenter$Callback;
    if-eqz v0, :cond_1a

    .line 1107
    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 1109
    :cond_1a
    return-void
.end method

.method public onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z
    .registers 6
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v2, 0x0

    .line 1093
    if-nez p1, :cond_4

    .line 1097
    :goto_3
    return v2

    .line 1095
    :cond_4
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, v3, Lcom/android/internal/view/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 1096
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuPresenter$PopupPresenterCallback;->this$0:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getCallback()Lcom/android/internal/view/menu/MenuPresenter$Callback;

    move-result-object v0

    .line 1097
    .local v0, "cb":Lcom/android/internal/view/menu/MenuPresenter$Callback;
    if-eqz v0, :cond_21

    invoke-interface {v0, p1}, Lcom/android/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/internal/view/menu/MenuBuilder;)Z

    move-result v1

    :goto_1f
    move v2, v1

    goto :goto_3

    :cond_21
    move v1, v2

    goto :goto_1f
.end method
