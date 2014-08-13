.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeOrderTouchListener"
.end annotation


# instance fields
.field private final PANEL_HEIGHT:I

.field private final PANEL_WIDTH:I

.field private mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

.field private mLayoutHandler:Landroid/os/Handler;

.field private mOldIndex:I

.field private mPanelLeft:I

.field private mPanelTop:I

.field private mPrevPosX:F

.field private mPrevPosY:F

.field private mPrevStatus:I

.field private mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2415
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2395
    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    .line 2396
    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    .line 2402
    new-instance v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener$1;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mLayoutHandler:Landroid/os/Handler;

    .line 2416
    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02040e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2417
    .local v0, "bg":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_WIDTH:I

    .line 2418
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_HEIGHT:I

    .line 2420
    const/4 v0, 0x0

    .line 2422
    const v2, 0x7f090456

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2424
    .local v1, "dragView":Landroid/view/View;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2426
    new-instance v2, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-direct {v2, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .line 2428
    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    .prologue
    .line 2390
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    return v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    .prologue
    .line 2390
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    return v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    .prologue
    .line 2390
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_WIDTH:I

    return v0
.end method

.method static synthetic access$2700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    .prologue
    .line 2390
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_HEIGHT:I

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;)Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;

    .prologue
    .line 2390
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    return-object v0
.end method

.method private cancelChangeOrder(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .prologue
    const/4 v3, 0x0

    .line 2463
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2478
    :cond_0
    :goto_0
    return-void

    .line 2467
    :cond_1
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2468
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2469
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2470
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PHOTO_NUMBER_IMAGES:[I
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[I

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2472
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mAdd:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getSpeedDialAddImage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2473
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->NUMBER_IMAGES:[I
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[I

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2474
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2475
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private changeData(I)V
    .locals 12
    .param p1, "destinationIndex"    # I

    .prologue
    const-wide/16 v10, 0x0

    .line 2499
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    add-int/lit8 v7, p1, -0x1

    aget-wide v6, v6, v7

    cmp-long v6, v6, v10

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    add-int/lit8 v7, p1, -0x1

    aget-wide v2, v6, v7

    .line 2501
    .local v2, "newId":J
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v6, v6, v7

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v4, v6, v7

    .line 2503
    .local v4, "oldId":J
    :goto_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    add-int/lit8 v7, p1, -0x1

    aput-wide v4, v6, v7

    .line 2504
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    add-int/lit8 v7, v7, -0x1

    aput-wide v2, v6, v7

    .line 2506
    const/4 v1, 0x0

    .line 2507
    .local v1, "isDataChanged":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/16 v6, 0x8

    if-ge v0, v6, :cond_4

    .line 2509
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    aget-wide v6, v6, v0

    iget-object v8, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J
    invoke-static {v8}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1800(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v8

    aget-wide v8, v8, v0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 2511
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    aput-wide v10, v6, v0

    .line 2507
    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2499
    .end local v0    # "i":I
    .end local v1    # "isDataChanged":Z
    .end local v2    # "newId":J
    .end local v4    # "oldId":J
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1800(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    add-int/lit8 v7, p1, -0x1

    aget-wide v2, v6, v7

    goto :goto_0

    .line 2501
    .restart local v2    # "newId":J
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1800(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    add-int/lit8 v7, v7, -0x1

    aget-wide v4, v6, v7

    goto :goto_1

    .line 2513
    .restart local v0    # "i":I
    .restart local v1    # "isDataChanged":Z
    .restart local v4    # "oldId":J
    :cond_3
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v6

    aget-wide v6, v6, v0

    cmp-long v6, v6, v10

    if-eqz v6, :cond_0

    .line 2515
    const/4 v1, 0x1

    goto :goto_3

    .line 2518
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setButtonClickable(Z)V

    .line 2553
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v6, v6, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2556
    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3100(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2558
    return-void
.end method

.method private setDimLayout(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V
    .locals 4
    .param p1, "holder"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x4

    .line 2482
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2483
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2484
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2486
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mAdd:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2487
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->PHOTO_NUMBER_IMAGES:[I
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3000(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[I

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 2488
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2489
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2493
    return-void
.end method


# virtual methods
.method public getIndexFromPosition(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 2440
    const/4 v1, 0x0

    .line 2441
    .local v1, "view":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_2

    .line 2443
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2444
    if-nez v1, :cond_1

    .line 2441
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2446
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_0

    .line 2448
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v2, p2

    if-lez v2, :cond_0

    .line 2458
    .end local v0    # "i":I
    :goto_1
    return v0

    .restart local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public hasPersonData()Z
    .locals 3

    .prologue
    .line 2435
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    const v2, 0x7f0e00b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2623
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I

    move-result v5

    if-nez v5, :cond_0

    .line 2624
    const/4 v5, 0x1

    .line 2772
    :goto_0
    return v5

    .line 2625
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    if-lez v5, :cond_1

    .line 2626
    const/4 v5, 0x1

    goto :goto_0

    .line 2627
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 2759
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 2760
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->cancelChangeOrder(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V

    .line 2761
    :cond_2
    const/4 v5, 0x3

    iput v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevStatus:I

    .line 2768
    :goto_1
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_d

    .line 2770
    const/4 v5, 0x0

    goto :goto_0

    .line 2630
    :pswitch_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mImageLoad:Z
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 2631
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    const/4 v6, 0x1

    # setter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDonotdown:Z
    invoke-static {v5, v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3302(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Z)Z

    .line 2632
    const/4 v5, 0x1

    goto :goto_0

    .line 2634
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    const/4 v6, 0x0

    # setter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDonotdown:Z
    invoke-static {v5, v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3302(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Z)Z

    .line 2636
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsExecuting:Z
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2637
    const/4 v5, 0x1

    goto :goto_0

    .line 2639
    :cond_4
    const/4 v5, 0x0

    iput v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevStatus:I

    .line 2640
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevPosX:F

    .line 2641
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleBarHeight:F
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevPosY:F

    .line 2659
    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->getIndexFromPosition(FF)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->setPressedItemLayout(Landroid/view/View;I)V

    goto :goto_1

    .line 2663
    :pswitch_1
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDonotdown:Z
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 2664
    const/4 v5, 0x1

    goto :goto_0

    .line 2666
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsExecuting:Z
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2667
    const/4 v5, 0x1

    goto :goto_0

    .line 2674
    :cond_6
    const/4 v5, 0x2

    iput v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevStatus:I

    .line 2675
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 2676
    .local v1, "lPosX":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mTitleBarHeight:F
    invoke-static {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)F

    move-result v6

    sub-float v2, v5, v6

    .line 2677
    .local v2, "lPosY":F
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevPosX:F

    sub-float/2addr v5, v1

    float-to-int v3, v5

    .line 2678
    .local v3, "posX":I
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevPosY:F

    sub-float/2addr v5, v2

    float-to-int v4, v5

    .line 2680
    .local v4, "posY":I
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v5, v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    sub-int/2addr v6, v3

    iget v7, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    sub-int/2addr v7, v4

    iget v8, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    sub-int/2addr v8, v3

    iget v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_WIDTH:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    sub-int/2addr v9, v4

    iget v10, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_HEIGHT:I

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup;->layout(IIII)V

    goto/16 :goto_1

    .line 2717
    .end local v1    # "lPosX":F
    .end local v2    # "lPosY":F
    .end local v3    # "posX":I
    .end local v4    # "posY":I
    :pswitch_2
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDonotdown:Z
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 2718
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    const/4 v6, 0x0

    # setter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mDonotdown:Z
    invoke-static {v5, v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$3302(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Z)Z

    .line 2719
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2721
    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mIsExecuting:Z
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2722
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2724
    :cond_8
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevStatus:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    .line 2726
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->getIndexFromPosition(FF)I

    move-result v0

    .line 2734
    .local v0, "destinationIndex":I
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    if-lez v5, :cond_a

    .line 2736
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    iget-object v5, v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    iget-object v5, v5, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoPos:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->access$300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)I

    move-result v5

    add-int/lit8 v6, v0, 0x1

    if-ne v5, v6, :cond_9

    .line 2737
    const/4 v0, 0x0

    .line 2739
    :cond_9
    if-eqz v0, :cond_b

    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    if-eq v0, v5, :cond_b

    .line 2741
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->changeData(I)V

    .line 2754
    .end local v0    # "destinationIndex":I
    :cond_a
    :goto_2
    const/4 v5, 0x1

    iput v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPrevStatus:I

    goto/16 :goto_1

    .line 2746
    .restart local v0    # "destinationIndex":I
    :cond_b
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->cancelChangeOrder(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V

    goto :goto_2

    .line 2750
    .end local v0    # "destinationIndex":I
    :cond_c
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_a

    .line 2752
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-direct {p0, v5}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->cancelChangeOrder(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V

    goto :goto_2

    .line 2772
    :cond_d
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2627
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setPressedItemLayout(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const v4, 0x40aa8f5c

    .line 2563
    if-nez p1, :cond_0

    .line 2565
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 2567
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .line 2568
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    .line 2570
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoPos:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->access$300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)I

    move-result v1

    add-int/lit8 v2, p2, 0x1

    if-ne v1, v2, :cond_2

    .line 2605
    :cond_1
    :goto_0
    return-void

    .line 2573
    :cond_2
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->hasPersonData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2575
    iput p2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mOldIndex:I

    .line 2576
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_WIDTH:I

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v3, v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    .line 2578
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialGrid:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    .line 2580
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 2582
    .local v0, "density":F
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 2584
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    int-to-float v1, v1

    mul-float v2, v0, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    .line 2585
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    int-to-float v1, v1

    const v2, 0x409570a4

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    .line 2593
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->setFloatingViewHolder(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V

    .line 2597
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mSelectedViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->setDimLayout(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V

    .line 2599
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mDragViewHolder:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_WIDTH:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->PANEL_HEIGHT:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 2601
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mLayoutHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2589
    :cond_3
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    int-to-float v1, v1

    mul-float v2, v0, v4

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelLeft:I

    .line 2590
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ChangeOrderTouchListener;->mPanelTop:I

    goto :goto_1
.end method
