.class public Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;
.super Landroid/app/Activity;
.source "RecentCallMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity$ListViewItemClickListner;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RecentCallMessageActivity"


# instance fields
.field private mAdapter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/callmessage/MessageAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLetterRingArraysEngId:[I

.field private final mLetterRingArraysId:[I

.field private mListView:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ListView;",
            ">;"
        }
    .end annotation
.end field

.field private final mListViewId:[I

.field private final mMessageArraysId:[I

.field private mMessageId:[I

.field private mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

.field private mRecentAdapter:Lcom/sec/android/app/dialertab/callmessage/MessageAdapter;

.field private mRecentArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mListViewId:[I

    .line 47
    new-array v0, v3, [I

    const v1, 0x7f080038

    aput v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mMessageArraysId:[I

    .line 48
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mLetterRingArraysId:[I

    .line 51
    new-array v0, v3, [I

    const v1, 0x7f080039

    aput v1, v0, v2

    iput-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mLetterRingArraysEngId:[I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mArray:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mAdapter:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mListView:Ljava/util/ArrayList;

    .line 275
    return-void

    .line 45
    :array_0
    .array-data 4
        0x7f090421
        0x7f090424
        0x7f090426
    .end array-data

    .line 48
    :array_1
    .array-data 4
        0x7f080039
        0x7f08003a
        0x7f08003b
    .end array-data
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->selectedMessage(Ljava/lang/String;)V

    return-void
.end method

.method private clearViews()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mAdapter:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mAdapter:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mListView:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 262
    :cond_2
    return-void
.end method

.method private selectedMessage(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 266
    const-string v2, "RecentCallMessageActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectedMessage.. = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 268
    .local v0, "bd":Landroid/os/Bundle;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 269
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "callmessage"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 271
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 272
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 273
    return-void
.end method

.method private setupViews()V
    .locals 15

    .prologue
    const v14, 0x7f09041f

    const v10, 0x7f09041e

    const v13, 0x7f0401d7

    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 169
    new-instance v4, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;-><init>(Landroid/content/Context;)V

    .line 170
    .local v4, "pref":Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;
    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->loadPreference()[Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, "recentData":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 174
    .local v6, "rowSize":I
    if-eqz v5, :cond_2

    array-length v7, v5

    if-lez v7, :cond_2

    .line 175
    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mRecentArray:Ljava/util/ArrayList;

    .line 176
    new-instance v7, Lcom/sec/android/app/dialertab/callmessage/MessageAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mRecentArray:Ljava/util/ArrayList;

    invoke-direct {v7, v8, v13, v9}, Lcom/sec/android/app/dialertab/callmessage/MessageAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mRecentAdapter:Lcom/sec/android/app/dialertab/callmessage/MessageAdapter;

    .line 177
    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mRecentListView:Landroid/widget/ListView;

    .line 178
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mRecentListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mRecentAdapter:Lcom/sec/android/app/dialertab/callmessage/MessageAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 179
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mRecentListView:Landroid/widget/ListView;

    new-instance v8, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity$ListViewItemClickListner;

    iget-object v9, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mRecentArray:Ljava/util/ArrayList;

    invoke-direct {v8, p0, v9}, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity$ListViewItemClickListner;-><init>(Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 181
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mRecentListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 182
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mRecentArray:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    mul-int/2addr v7, v6

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 183
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mRecentListView:Landroid/widget/ListView;

    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mRecentListView:Landroid/widget/ListView;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 186
    invoke-virtual {p0, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    const v7, 0x7f090424

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 195
    const v7, 0x7f090423

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 196
    const v7, 0x7f090426

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 197
    const v7, 0x7f090425

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 199
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 200
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v7

    const/16 v8, 0x1001

    if-ne v7, v8, :cond_3

    .line 201
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mLetterRingArraysId:[I

    iput-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mMessageId:[I

    .line 202
    const v7, 0x7f090424

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 203
    const v7, 0x7f090423

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 204
    const v7, 0x7f090426

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 205
    const v7, 0x7f090425

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mMessageId:[I

    array-length v7, v7

    if-ge v0, v7, :cond_6

    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, "items":[Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v7

    const/16 v8, 0x1003

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v7}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v7

    const/16 v8, 0x1002

    if-ne v7, v8, :cond_7

    .line 218
    :cond_0
    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->loadPreferencePhrase()[Ljava/lang/String;

    move-result-object v1

    .line 219
    if-nez v1, :cond_1

    .line 220
    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->isFilledDefaultPhrases()Z

    move-result v7

    if-nez v7, :cond_5

    .line 221
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mMessageId:[I

    aget v8, v8, v0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {v4, v1}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->savePreferencePhrase([Ljava/lang/String;)Z

    .line 223
    invoke-virtual {v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->setFilledDefaultPhrases()V

    .line 230
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mListViewId:[I

    aget v7, v7, v0

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 231
    const v7, 0x7f090422

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 236
    :goto_3
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mArray:Ljava/util/ArrayList;

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v8, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mAdapter:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/android/app/dialertab/callmessage/MessageAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-direct {v9, v10, v13, v7}, Lcom/sec/android/app/dialertab/callmessage/MessageAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mListViewId:[I

    aget v7, v7, v0

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 240
    .local v3, "lv":Landroid/widget/ListView;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mAdapter:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ListAdapter;

    invoke-virtual {v3, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    new-instance v8, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity$ListViewItemClickListner;

    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-direct {v8, p0, v7}, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity$ListViewItemClickListner;-><init>(Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v8}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 243
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 244
    .restart local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mArray:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    mul-int/2addr v7, v6

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 245
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 189
    .end local v0    # "i":I
    .end local v1    # "items":[Ljava/lang/String;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "lv":Landroid/widget/ListView;
    :cond_2
    invoke-virtual {p0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mRecentListView:Landroid/widget/ListView;

    .line 190
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mRecentListView:Landroid/widget/ListView;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 191
    invoke-virtual {p0, v14}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 207
    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mMessageArraysId:[I

    iput-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mMessageId:[I

    goto/16 :goto_1

    .line 210
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mLetterRingArraysEngId:[I

    iput-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mMessageId:[I

    goto/16 :goto_1

    .line 225
    .restart local v0    # "i":I
    .restart local v1    # "items":[Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mListViewId:[I

    aget v7, v7, v0

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 226
    const v7, 0x7f090422

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .end local v1    # "items":[Ljava/lang/String;
    :cond_6
    const v7, 0x7f09041c

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    const/4 v8, 0x0

    const v9, 0x7f09041d

    invoke-virtual {p0, v9}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/ScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 250
    return-void

    .line 233
    .restart local v1    # "items":[Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mMessageId:[I

    aget v8, v8, v0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 101
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    const-string v1, "RecentCallMessageActivity"

    const-string v2, "<<onCreate>>"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v1, 0x7f0401d3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 69
    invoke-static {}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getInstance()Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 72
    .local v0, "actionbar":Landroid/app/ActionBar;
    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 75
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f120021

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 106
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 94
    const-string v0, "RecentCallMessageActivity"

    const-string v1, "<<onDestroy>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 96
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 164
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    :goto_1
    return v3

    .line 140
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 141
    const/4 v3, 0x1

    goto :goto_1

    .line 144
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 145
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "type"

    sget v4, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->TYPE_ADD:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 150
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    .local v2, "intent_edit":Landroid/content/Intent;
    const-string v3, "type"

    sget v4, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->TYPE_EDIT:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 156
    .end local v2    # "intent_edit":Landroid/content/Intent;
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v1, "intent_delete":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 137
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f09052e -> :sswitch_1
        0x7f09052f -> :sswitch_2
        0x7f090530 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "RecentCallMessageActivity"

    const-string v1, "<<onPause>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->clearViews()V

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 90
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v0

    const/16 v1, 0x1003

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mOperator:Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/callmessage/OperatorInfo;->getCurrentOpeartor()I

    move-result v0

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_3

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 114
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 115
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 116
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 131
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 118
    :cond_1
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 119
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->mListView:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 121
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 123
    :cond_2
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 127
    :cond_3
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 128
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 129
    invoke-interface {p1, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    const-string v0, "RecentCallMessageActivity"

    const-string v1, "<<onResume>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/callmessage/RecentCallMessageActivity;->setupViews()V

    .line 82
    return-void
.end method
