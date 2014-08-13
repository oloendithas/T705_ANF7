.class public Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;
.super Landroid/app/Activity;
.source "PhrasesEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity$ListViewItemClickListner;
    }
.end annotation


# static fields
.field public static final EDIT_MESSAGE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "PhrasesEditActivity"


# instance fields
.field private mMessageAdapter:Lcom/sec/android/app/dialertab/callmessage/MessageAdapter;

.field private mMessageArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;->selectedMessage(Ljava/lang/String;I)V

    return-void
.end method

.method private clearViews()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;->mMessageListView:Landroid/widget/ListView;

    .line 123
    return-void
.end method

.method private selectedMessage(Ljava/lang/String;I)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v1, "position"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    const-string v1, "type"

    sget v2, Lcom/sec/android/app/dialertab/callmessage/CallMessageEditActivity;->TYPE_EDIT:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 133
    return-void
.end method

.method private setupViews()V
    .locals 8

    .prologue
    .line 103
    new-instance v2, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;-><init>(Landroid/content/Context;)V

    .line 104
    .local v2, "pref":Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;
    invoke-virtual {v2}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->loadPreferencePhrase()[Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "messageData":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 108
    .local v3, "rowSize":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;->mMessageArray:Ljava/util/ArrayList;

    .line 109
    new-instance v4, Lcom/sec/android/app/dialertab/callmessage/MessageAdapter;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0401d7

    iget-object v7, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;->mMessageArray:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6, v7}, Lcom/sec/android/app/dialertab/callmessage/MessageAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;->mMessageAdapter:Lcom/sec/android/app/dialertab/callmessage/MessageAdapter;

    .line 110
    const v4, 0x7f09042b

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;->mMessageListView:Landroid/widget/ListView;

    .line 111
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;->mMessageListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;->mMessageAdapter:Lcom/sec/android/app/dialertab/callmessage/MessageAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;->mMessageListView:Landroid/widget/ListView;

    new-instance v5, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity$ListViewItemClickListner;

    iget-object v6, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;->mMessageArray:Ljava/util/ArrayList;

    invoke-direct {v5, p0, v6}, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity$ListViewItemClickListner;-><init>(Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 115
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;->mMessageArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    mul-int/2addr v4, v3

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 116
    iget-object v4, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;->mMessageListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    const v4, 0x7f09041c

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    const/4 v5, 0x0

    const v6, 0x7f09041d

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/ScrollView;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 82
    packed-switch p1, :pswitch_data_0

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 84
    :pswitch_0
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 85
    const-string v4, "PhrasesEditActivity"

    const-string v5, "callmessage selected"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 88
    .local v0, "bd":Landroid/os/Bundle;
    const-string v4, "message"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "msg":Ljava/lang/String;
    const-string v4, "position"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 90
    .local v2, "pos":I
    new-instance v3, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;-><init>(Landroid/content/Context;)V

    .line 91
    .local v3, "pref":Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;
    invoke-virtual {v3, v2, v1}, Lcom/sec/android/app/dialertab/callmessage/CallMessagePreference;->savePreferencePhrase(ILjava/lang/String;)Z

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 75
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const-string v0, "PhrasesEditActivity"

    const-string v1, "<<onCreate>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const v0, 0x7f0401d5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 49
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "PhrasesEditActivity"

    const-string v1, "<<onDestroy>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 70
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "PhrasesEditActivity"

    const-string v1, "<<onPause>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;->clearViews()V

    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 64
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 54
    const-string v0, "PhrasesEditActivity"

    const-string v1, "<<onResume>>"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/callmessage/PhrasesEditActivity;->setupViews()V

    .line 56
    return-void
.end method
