.class Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$CheckBoxHideListener;
.super Ljava/lang/Object;
.source "ItemsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxHideListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$CheckBoxHideListener;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;
    .param p2, "x1"    # Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$1;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$CheckBoxHideListener;-><init>(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 318
    instance-of v1, p1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    .line 319
    const v1, 0x7f0e002b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 329
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$CheckBoxHideListener;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    # getter for: Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->mParentShootingModeGridView:Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;
    invoke-static {v1}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->access$000(Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;)Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/shootingmodemanager/views/ShootingModeGridView;->setEnableItemsInParentView()V

    .line 330
    return-void

    .line 320
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    instance-of v1, p1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 321
    iget-object v2, p0, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$CheckBoxHideListener;->this$0:Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;

    check-cast v1, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;

    iget v1, v1, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter$ViewHolder;->mPosition:I

    invoke-virtual {v2, v1}, Lcom/sec/android/app/shootingmodemanager/views/ItemsAdapter;->getItemInfo(I)Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;

    move-result-object v0

    .line 323
    .local v0, "effectInfo":Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/shootingmodemanager/ShootingModeItem;->setVisible(Z)V

    goto :goto_0
.end method
