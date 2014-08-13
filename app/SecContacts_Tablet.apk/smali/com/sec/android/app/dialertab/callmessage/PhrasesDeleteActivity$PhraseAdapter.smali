.class Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhrasesDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhraseAdapter"
.end annotation


# static fields
.field static final MAX_PHRASES_SIZE:I = 0xa


# instance fields
.field mCheckBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mLayoutId:I

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mPhrases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p4, "phrases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->this$0:Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 244
    iput-object p2, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->mContext:Landroid/content/Context;

    .line 245
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 246
    iput-object p4, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->mPhrases:Ljava/util/ArrayList;

    .line 247
    iput p3, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->mLayoutId:I

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->mCheckBoxes:Ljava/util/ArrayList;

    .line 249
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->mPhrases:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->mPhrases:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 293
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 298
    if-nez p2, :cond_0

    .line 299
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->mLayoutId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 302
    :cond_0
    const v1, 0x7f09002c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 303
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->mPhrases:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v2, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->mCheckBoxes:Ljava/util/ArrayList;

    const v1, 0x7f09042d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 307
    return-object p2
.end method

.method public isChecked(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isCheckedAll()Z
    .locals 3

    .prologue
    .line 268
    iget-object v2, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 269
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    const/4 v2, 0x0

    .line 273
    .end local v0    # "cb":Landroid/widget/CheckBox;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isNonCheckedAll()Z
    .locals 3

    .prologue
    .line 277
    iget-object v2, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 278
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    const/4 v2, 0x0

    .line 282
    .end local v0    # "cb":Landroid/widget/CheckBox;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setChecked(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "isCheck"    # Z

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 265
    return-void
.end method

.method public setCheckedAll(Z)V
    .locals 3
    .param p1, "isCheck"    # Z

    .prologue
    .line 286
    iget-object v2, p0, Lcom/sec/android/app/dialertab/callmessage/PhrasesDeleteActivity$PhraseAdapter;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 287
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    .line 289
    .end local v0    # "cb":Landroid/widget/CheckBox;
    :cond_0
    return-void
.end method
