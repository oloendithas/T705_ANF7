.class public Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;
.super Ljava/lang/Object;
.source "InteractionContactDatas.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    }
.end annotation


# static fields
.field static final COLUMN_INDEX_DATA_CONTACT_ID:I = 0x2

.field static final COLUMN_INDEX_DATA_DATA1:I = 0x3

.field static final COLUMN_INDEX_DATA_DATA2:I = 0x4

.field static final COLUMN_INDEX_DATA_DATA3:I = 0x5

.field static final COLUMN_INDEX_DATA_DISPLAY_NAME:I = 0x6

.field static final COLUMN_INDEX_DATA_DISPLAY_NAME_ALT:I = 0x7

.field static final COLUMN_INDEX_DATA_ID:I = 0x0

.field static final COLUMN_INDEX_DATA_IS_SUPER_PRIMARY:I = 0x8

.field static final COLUMN_INDEX_DATA_MIMETYPE:I = 0x9

.field static final COLUMN_INDEX_DATA_RQW_CONTACT_ID:I = 0x1

.field static final COLUMN_INDEX_RAW_CONTACTS_ACCOUNT_TYPE:I = 0xa

.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field includingPrimaryContact:Z

.field public mAccountType:Ljava/lang/String;

.field private mActionCode:I

.field public mAvailableDataCount:I

.field public mDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayName:Ljava/lang/String;

.field public mDisplayNameAlt:Ljava/lang/String;

.field public mPartition:Ljava/lang/String;

.field public mUri:Landroid/net/Uri;

.field singleData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$1;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;Landroid/net/Uri;ZI)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "partition"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "flag"    # Z
    .param p5, "ActionCode"    # I

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    .line 115
    iput p5, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mActionCode:I

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    .line 118
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    .line 120
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    .line 121
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAccountType:Ljava/lang/String;

    .line 122
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->setPrimaryContact(Landroid/database/Cursor;)V

    .line 123
    invoke-direct {p0, p1, p4}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->makeDataSet(Landroid/database/Cursor;Z)V

    .line 126
    :cond_0
    iput-object p2, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mPartition:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mActionCode:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .local v1, "dataSetSize":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    .line 91
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 92
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)V

    .line 93
    .local v0, "dataInfo":Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->contactId:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayNameAlt:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataType:I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->typeString:Ljava/lang/String;

    .line 101
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "dataInfo":Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAccountType:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mPartition:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->singleData:Z

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->includingPrimaryContact:Z

    .line 112
    return-void

    :cond_1
    move v3, v5

    .line 110
    goto :goto_1

    :cond_2
    move v4, v5

    .line 111
    goto :goto_2
.end method

.method private makeDataSet(Landroid/database/Cursor;Z)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "flag"    # Z

    .prologue
    const/4 v2, 0x1

    .line 155
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->move(I)Z

    .line 156
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->singleData:Z

    if-eqz v1, :cond_1

    .line 158
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->saveDataType(Landroid/database/Cursor;)V

    goto :goto_0

    .line 161
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->includingPrimaryContact:Z

    if-eqz v1, :cond_2

    .line 162
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 163
    .local v0, "primary":I
    if-lez v0, :cond_0

    .line 164
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->saveDataType(Landroid/database/Cursor;)V

    .line 165
    if-ne p2, v2, :cond_0

    .line 180
    .end local v0    # "primary":I
    :goto_1
    return-void

    .line 169
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->saveDataType(Landroid/database/Cursor;)V

    .line 170
    if-ne p2, v2, :cond_0

    goto :goto_1

    .line 177
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 179
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    goto :goto_1
.end method

.method private saveData(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 221
    new-instance v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;-><init>(Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;)V

    .line 222
    .local v0, "dataInfo":Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->contactId:Ljava/lang/String;

    .line 223
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    .line 224
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayNameAlt:Ljava/lang/String;

    .line 225
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    .line 226
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    .line 227
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    .line 228
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataType:I

    .line 229
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->typeString:Ljava/lang/String;

    .line 231
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->rawContactId:Ljava/lang/String;

    .line 233
    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    .line 239
    :cond_0
    return-void
.end method

.method private saveDataType(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v2, 0x9

    .line 183
    iget v0, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mActionCode:I

    sparse-switch v0, :sswitch_data_0

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 186
    :sswitch_0
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->saveData(Landroid/database/Cursor;)V

    goto :goto_0

    .line 195
    :sswitch_1
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->saveData(Landroid/database/Cursor;)V

    goto :goto_0

    .line 201
    :sswitch_2
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vnd.android.cursor.item/rcs_data"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->saveData(Landroid/database/Cursor;)V

    goto :goto_0

    .line 211
    :sswitch_3
    const-string v0, "vnd.chaton.item/vnd.com.chaton.profile"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->saveData(Landroid/database/Cursor;)V

    goto :goto_0

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x96 -> :sswitch_2
        0xa0 -> :sswitch_0
        0xaa -> :sswitch_1
        0xbe -> :sswitch_1
        0x118 -> :sswitch_0
        0x122 -> :sswitch_1
        0x125 -> :sswitch_3
        0x126 -> :sswitch_1
    .end sparse-switch
.end method

.method private setPrimaryContact(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "addData":I
    const/4 v2, 0x0

    .line 133
    .local v2, "primary":I
    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->move(I)Z

    .line 134
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-le v3, v5, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->singleData:Z

    .line 135
    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 137
    const/16 v3, 0x8

    :try_start_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 142
    if-lez v2, :cond_0

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v3, v5

    .line 134
    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/NumberFormatException;
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->includingPrimaryContact:Z

    .line 152
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_2
    return-void

    .line 146
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 147
    if-nez v0, :cond_4

    .line 148
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->includingPrimaryContact:Z

    goto :goto_2

    .line 149
    :cond_4
    if-lt v0, v5, :cond_2

    .line 150
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->includingPrimaryContact:Z

    goto :goto_2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 249
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mActionCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->contactId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->displayNameAlt:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->data:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->dataType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDataSet:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas$DataInfo;->typeString:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mDisplayNameAlt:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mPartition:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 266
    iget v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->mAvailableDataCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->singleData:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/interaction/InteractionContactDatas;->includingPrimaryContact:Z

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    return-void

    :cond_1
    move v1, v3

    .line 267
    goto :goto_1

    :cond_2
    move v2, v3

    .line 268
    goto :goto_2
.end method
