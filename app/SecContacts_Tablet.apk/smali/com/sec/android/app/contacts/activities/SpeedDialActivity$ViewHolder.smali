.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field mAdd:Landroid/widget/ImageView;

.field mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field mItemBg:Landroid/view/ViewGroup;

.field mItemLayout:Landroid/view/ViewGroup;

.field mName:Landroid/widget/TextView;

.field mNumberAdd:Landroid/widget/ImageView;

.field mNumberPhoto:Landroid/widget/ImageView;

.field mPhoto:Landroid/widget/ImageView;

.field mReOrderImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2359
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->setView(Landroid/view/View;)V

    .line 2360
    return-void
.end method


# virtual methods
.method public setFloatingViewHolder(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .prologue
    .line 2381
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2384
    iget-object v0, p1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2387
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2364
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    .line 2365
    const v0, 0x7f09045b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemBg:Landroid/view/ViewGroup;

    .line 2366
    const v0, 0x7f09045c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mAdd:Landroid/widget/ImageView;

    .line 2367
    const v0, 0x7f09045d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    .line 2368
    const v0, 0x7f090457

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    .line 2369
    const v0, 0x7f090459

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    .line 2370
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2371
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    .line 2373
    :cond_0
    const v0, 0x7f09045e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    .line 2374
    const v0, 0x7f090461

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 2375
    const v0, 0x7f090460

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    .line 2376
    return-void
.end method
