.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;
.super Landroid/widget/BaseAdapter;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialpadChooserAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;
    }
.end annotation


# static fields
.field static final DIALPAD_CHOICE_ADD_NEW_CALL:I = 0x67

.field static final DIALPAD_CHOICE_RETURN_TO_CALL:I = 0x66

.field static final DIALPAD_CHOICE_USE_DTMF_DIALPAD:I = 0x65

.field private static final NUM_ITEMS_2:I = 0x2

.field private static final NUM_ITEMS_3:I = 0x3


# instance fields
.field private mChoiceItems:[Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    .line 12085
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 12087
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 12090
    const-string v0, "feature_disable_add_call"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v0, :cond_3

    const-string v0, "feature_easy_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12092
    :cond_0
    new-array v0, v6, [Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    .line 12101
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const v3, 0x7f0e00ab

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020692

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x65

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    aput-object v2, v0, v1

    .line 12108
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const v3, 0x7f0e00ac

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020691

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/16 v5, 0x66

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    aput-object v2, v0, v1

    .line 12116
    const-string v0, "feature_disable_add_call"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v0, :cond_1

    const-string v0, "feature_easy_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 12118
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    new-instance v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    const v2, 0x7f0e00ad

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020690

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    const/16 v4, 0x67

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    aput-object v1, v0, v6

    .line 12124
    :cond_2
    return-void

    .line 12094
    :cond_3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 12127
    const-string v0, "feature_disable_add_call"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/contacts/activities/DialtactsActivity;->mEasyMode:Z

    if-eqz v0, :cond_1

    const-string v0, "feature_easy_mode"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12129
    :cond_0
    const/4 v0, 0x2

    .line 12131
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 12138
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 12145
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 12154
    if-nez p2, :cond_0

    .line 12155
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400e2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 12158
    :cond_0
    const v2, 0x7f09002c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 12159
    .local v1, "text":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12160
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f110051

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 12162
    const v2, 0x7f090027

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 12163
    .local v0, "icon":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter;->mChoiceItems:[Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$DialpadChooserAdapter$ChoiceItem;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 12165
    return-object p2
.end method
