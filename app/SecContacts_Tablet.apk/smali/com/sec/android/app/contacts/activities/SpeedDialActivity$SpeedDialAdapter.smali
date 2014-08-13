.class Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpeedDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedDialAdapter"
.end annotation


# instance fields
.field cursor:Landroid/database/Cursor;

.field final synthetic this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V
    .locals 0

    .prologue
    .line 2131
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/activities/SpeedDialActivity$1;

    .prologue
    .line 2131
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2139
    const/16 v0, 0x9

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 2149
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2169
    if-nez p2, :cond_0

    .line 2171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0401f8

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2173
    new-instance v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2185
    .local v11, "holder":Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2192
    :goto_0
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->NUMBER_IMAGES:[I
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[I

    move-result-object v3

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    iget-object v1, v1, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoPos:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->access$300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)I

    move-result v1

    add-int/lit8 v3, p1, 0x1

    if-ne v1, v3, :cond_2

    .line 2196
    const-string v1, "Emergency"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    iget-object v3, v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoType:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->access$1400(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2197
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberAdd:Landroid/widget/ImageView;

    const v3, 0x7f02041a

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2198
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    const v3, 0x7f02041b

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 2199
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mAdd:Landroid/widget/ImageView;

    const v3, 0x7f020419

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2203
    :goto_1
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    iget-object v3, v3, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mFixedSpeedDial:Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->mSdFixedInfoName:Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;->access$1500(Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialFixedInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2204
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2205
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 2206
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mColorStateList:Landroid/content/res/ColorStateList;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1600(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2207
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2208
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2209
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 2332
    :goto_2
    return-object p2

    .line 2190
    .end local v11    # "holder":Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;

    .restart local v11    # "holder":Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;
    goto/16 :goto_0

    .line 2201
    :cond_1
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mAdd:Landroid/widget/ImageView;

    const v3, 0x7f020434

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 2213
    :cond_2
    if-eqz p1, :cond_f

    .line 2216
    const-wide/16 v7, -0x1

    .line 2217
    .local v7, "rawContactId":J
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    .line 2219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v1

    add-int/lit8 v3, p1, -0x1

    aget-wide v12, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1800(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v1

    add-int/lit8 v3, p1, -0x1

    aget-wide v14, v1, v3

    cmp-long v1, v12, v14

    if-nez v1, :cond_3

    .line 2221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v1

    add-int/lit8 v3, p1, -0x1

    const-wide/16 v12, 0x0

    aput-wide v12, v1, v3

    .line 2224
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v1

    add-int/lit8 v3, p1, -0x1

    aget-wide v12, v1, v3

    const-wide/16 v14, 0x0

    cmp-long v1, v12, v14

    if-eqz v1, :cond_9

    .line 2226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/net/Uri;

    move-result-object v2

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2000()[Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "speed_dial_data_id="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mChangedDataIds:[J
    invoke-static {v9}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1700(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v9

    add-int/lit8 v12, p1, -0x1

    aget-wide v12, v9, v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    .line 2228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    .line 2230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    const-string v6, "raw_contact_id"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2234
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2254
    :cond_5
    :goto_3
    const-wide/16 v12, -0x1

    cmp-long v1, v7, v12

    if-lez v1, :cond_c

    .line 2256
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2257
    .local v2, "rawContactsUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->RAW_CONTACTS_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2100()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    .line 2258
    const-wide/16 v4, -0x1

    .line 2259
    .local v4, "contactId":J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_7

    .line 2261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2263
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2266
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    .line 2270
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    move-object v6, v11

    move/from16 v9, p1

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->setItemLayout(JLcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;JI)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_b

    .line 2277
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mContactPosition:[Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[Z

    move-result-object v1

    const/4 v3, 0x1

    aput-boolean v3, v1, p1

    goto/16 :goto_2

    .line 2239
    .end local v2    # "rawContactsUri":Landroid/net/Uri;
    .end local v4    # "contactId":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1800(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v1

    add-int/lit8 v3, p1, -0x1

    const-wide/16 v12, -0x1

    aput-wide v12, v1, v3

    .line 2240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mSpeedDialUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1900(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)Landroid/net/Uri;

    move-result-object v2

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->SPEED_DIAL_PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2000()[Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "key_number="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    .line 2241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    .line 2243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    const-string v6, "raw_contact_id"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 2246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mOriginDataIds:[J
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$1800(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[J

    move-result-object v1

    add-int/lit8 v3, p1, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    const-string v12, "speed_dial_data_id"

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    aput-wide v12, v1, v3

    .line 2249
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 2285
    .restart local v2    # "rawContactsUri":Landroid/net/Uri;
    .restart local v4    # "contactId":J
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.contacts/contacts/speeddial/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v3, v6, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2298
    .end local v2    # "rawContactsUri":Landroid/net/Uri;
    .end local v4    # "contactId":J
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mContactPosition:[Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[Z

    move-result-object v1

    const/4 v3, 0x0

    aput-boolean v3, v1, p1

    .line 2299
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2300
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mAdd:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getSpeedDialAddImage(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2301
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I

    move-result v1

    if-nez v1, :cond_d

    .line 2302
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2303
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const v3, 0x7f0e00b7

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2304
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2327
    .end local v7    # "rawContactId":J
    :goto_5
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mNumberPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2330
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mDeleteCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto/16 :goto_2

    .line 2291
    .restart local v7    # "rawContactId":J
    :cond_c
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 2292
    .local v10, "NubmerString":Ljava/lang/String;
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0e0250

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2305
    .end local v10    # "NubmerString":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I
    invoke-static {v1}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    .line 2306
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mReOrderImage:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2307
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2308
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 2310
    :cond_e
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2311
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 2317
    .end local v7    # "rawContactId":J
    :cond_f
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mAdd:Landroid/widget/ImageView;

    const v3, 0x7f020435

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2318
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const v3, 0x7f0e009b

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2319
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2321
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2323
    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    .line 2324
    .restart local v10    # "NubmerString":Ljava/lang/String;
    iget-object v1, v11, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$ViewHolder;->mItemLayout:Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0e009b

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mContactPosition:[Z
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2300(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)[Z

    move-result-object v0

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SpeedDialActivity$SpeedDialAdapter;->this$0:Lcom/sec/android/app/contacts/activities/SpeedDialActivity;

    # getter for: Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->mCurrentMode:I
    invoke-static {v0}, Lcom/sec/android/app/contacts/activities/SpeedDialActivity;->access$2200(Lcom/sec/android/app/contacts/activities/SpeedDialActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2338
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    .line 2340
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
