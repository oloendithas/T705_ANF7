.class public abstract Lcom/android/contacts/widget/IndexerListAdapter;
.super Lcom/android/contacts/widget/PinnedHeaderListAdapter;
.source "IndexerListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHeader:Landroid/view/View;

.field private mIndexedPartition:I

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

.field private mSectionHeaderDisplayEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexedPartition:I

    .line 55
    new-instance v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    invoke-direct {v0}, Lcom/android/contacts/widget/IndexerListAdapter$Placement;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    .line 62
    iput-object p1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method protected abstract clearPinnedHeaderContactsCount(Landroid/view/View;)V
.end method

.method public configurePinnedHeaders(Lcom/android/contacts/widget/PinnedHeaderListView;)V
    .locals 11
    .param p1, "listView"    # Lcom/android/contacts/widget/PinnedHeaderListView;

    .prologue
    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 164
    invoke-super {p0, p1}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->configurePinnedHeaders(Lcom/android/contacts/widget/PinnedHeaderListView;)V

    .line 166
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 207
    :goto_0
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->getPinnedHeaderCount()I

    move-result v9

    add-int/lit8 v0, v9, -0x1

    .line 171
    .local v0, "index":I
    iget-object v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v9, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->getCount()I

    move-result v9

    if-nez v9, :cond_2

    .line 172
    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v9

    invoke-virtual {p1, v9}, Lcom/android/contacts/widget/PinnedHeaderListView;->getPositionAt(I)I

    move-result v2

    .line 175
    .local v2, "listPosition":I
    invoke-virtual {p1}, Lcom/android/contacts/widget/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v9

    sub-int v7, v2, v9

    .line 177
    .local v7, "position":I
    const/4 v8, -0x1

    .line 178
    .local v8, "section":I
    invoke-virtual {p0, v7}, Lcom/android/contacts/widget/IndexerListAdapter;->getPartitionForPosition(I)I

    move-result v5

    .line 179
    .local v5, "partition":I
    iget v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexedPartition:I

    if-ne v5, v9, :cond_3

    .line 180
    invoke-virtual {p0, v7}, Lcom/android/contacts/widget/IndexerListAdapter;->getOffsetInPartition(I)I

    move-result v4

    .line 181
    .local v4, "offset":I
    if-eq v4, v10, :cond_3

    .line 182
    invoke-virtual {p0, v4}, Lcom/android/contacts/widget/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v8

    .line 186
    .end local v4    # "offset":I
    :cond_3
    if-ne v8, v10, :cond_4

    .line 187
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/widget/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto :goto_0

    .line 189
    :cond_4
    iget-object v10, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mHeader:Landroid/view/View;

    iget-object v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v9}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v9

    aget-object v9, v9, v8

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v10, v9}, Lcom/android/contacts/widget/IndexerListAdapter;->setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 190
    if-nez v8, :cond_7

    .line 191
    iget-object v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/contacts/widget/IndexerListAdapter;->setPinnedHeaderContactsCount(Landroid/view/View;)V

    .line 196
    :goto_1
    iget v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v9}, Lcom/android/contacts/widget/IndexerListAdapter;->getPositionForPartition(I)I

    move-result v6

    .line 197
    .local v6, "partitionStart":I
    iget v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v9}, Lcom/android/contacts/widget/IndexerListAdapter;->hasHeader(I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 198
    add-int/lit8 v6, v6, 0x1

    .line 202
    :cond_5
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p0, v9}, Lcom/android/contacts/widget/IndexerListAdapter;->getPositionForSection(I)I

    move-result v9

    add-int v3, v6, v9

    .line 203
    .local v3, "nextSectionPosition":I
    add-int/lit8 v9, v3, -0x1

    if-ne v7, v9, :cond_6

    const/4 v1, 0x1

    .line 204
    .local v1, "isLastInSection":Z
    :cond_6
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/contacts/widget/PinnedHeaderListView;->setFadingHeader(IIZ)V

    goto :goto_0

    .line 193
    .end local v1    # "isLastInSection":Z
    .end local v3    # "nextSectionPosition":I
    .end local v6    # "partitionStart":I
    :cond_7
    iget-object v9, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v9}, Lcom/android/contacts/widget/IndexerListAdapter;->clearPinnedHeaderContactsCount(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected abstract createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getIndexedPartition()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexedPartition:I

    return v0
.end method

.method public getIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method public getItemPlacementInSection(I)Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 215
    iget-object v2, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    # getter for: Lcom/android/contacts/widget/IndexerListAdapter$Placement;->position:I
    invoke-static {v2}, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->access$000(Lcom/android/contacts/widget/IndexerListAdapter$Placement;)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 216
    iget-object v2, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    .line 254
    :goto_0
    return-object v2

    .line 219
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    # setter for: Lcom/android/contacts/widget/IndexerListAdapter$Placement;->position:I
    invoke-static {v2, p1}, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->access$002(Lcom/android/contacts/widget/IndexerListAdapter$Placement;I)I

    .line 220
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/contacts/widget/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v1

    .line 222
    .local v1, "section":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/contacts/widget/IndexerListAdapter;->getPositionForSection(I)I

    move-result v2

    if-ne v2, p1, :cond_4

    .line 223
    iget-object v2, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-boolean v3, v2, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->firstInSection:Z

    .line 224
    iget-object v5, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/String;

    iput-object v2, v5, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    .line 225
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v5, "CscFeature_Contact_EnableStrokeSortList"

    invoke-virtual {v2, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iget-object v2, v2, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    const-string v5, "448"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 228
    iget-object v2, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iget-object v5, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iget-object v5, v5, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    const-string v6, "448"

    const-string v7, "48"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    .line 239
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/android/contacts/widget/IndexerListAdapter;->getPositionForSection(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v2, p1, :cond_5

    move v2, v3

    :goto_2
    iput-boolean v2, v5, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->lastInSection:Z

    .line 240
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableStrokeSortList"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 242
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 243
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    aget-object v0, v2, v3

    check-cast v0, Ljava/lang/String;

    .line 244
    .local v0, "nextHeader":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "48"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "448"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 245
    iget-object v2, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-boolean v4, v2, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->lastInSection:Z

    .line 254
    .end local v0    # "nextHeader":Ljava/lang/String;
    .end local v1    # "section":I
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    goto/16 :goto_0

    .line 230
    .restart local v1    # "section":I
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iget-object v2, v2, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    const-string v5, "48"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-object v6, v2, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_1

    .line 235
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-boolean v4, v2, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->firstInSection:Z

    .line 236
    iget-object v2, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-object v6, v2, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move v2, v4

    .line 239
    goto :goto_2

    .line 250
    .end local v1    # "section":I
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-boolean v4, v2, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->firstInSection:Z

    .line 251
    iget-object v2, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-boolean v4, v2, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->lastInSection:Z

    .line 252
    iget-object v2, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    iput-object v6, v2, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_3
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-super {p0}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 146
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "viewIndex"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mHeader:Landroid/view/View;

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/widget/IndexerListAdapter;->createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mHeader:Landroid/view/View;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mHeader:Landroid/view/View;

    .line 158
    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1, "sectionIndex"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 124
    const/4 v0, -0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 135
    const/4 v0, -0x1

    .line 138
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public setIndexedPartition(I)V
    .locals 0
    .param p1, "partition"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexedPartition:I

    .line 100
    return-void
.end method

.method public setIndexer(Landroid/widget/SectionIndexer;)V
    .locals 1
    .param p1, "indexer"    # Landroid/widget/SectionIndexer;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    .line 108
    iget-object v0, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    invoke-virtual {v0}, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->invalidate()V

    .line 109
    return-void
.end method

.method protected abstract setPinnedHeaderContactsCount(Landroid/view/View;)V
.end method

.method protected abstract setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/android/contacts/widget/IndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    .line 92
    return-void
.end method
