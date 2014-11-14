.class public final Landroid/provider/ContactsContract$CommonDataKinds$Im;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Im"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im"

.field public static final CUSTOM_PROTOCOL:Ljava/lang/String; = "data6"

.field public static final PROTOCOL:Ljava/lang/String; = "data5"

.field public static final PROTOCOL_AIM:I = 0x0

.field public static final PROTOCOL_CUSTOM:I = -0x1

.field public static final PROTOCOL_GOOGLE_TALK:I = 0x5

.field public static final PROTOCOL_ICQ:I = 0x6

.field public static final PROTOCOL_JABBER:I = 0x7

.field public static final PROTOCOL_MSN:I = 0x1

.field public static final PROTOCOL_NETMEETING:I = 0x8

.field public static final PROTOCOL_QQ:I = 0x4

.field public static final PROTOCOL_SKYPE:I = 0x3

.field public static final PROTOCOL_YAHOO:I = 0x2

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 6093
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 6180
    const/4 v1, -0x1

    if-ne p1, v1, :cond_a

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 6184
    .end local p2    # "label":Ljava/lang/CharSequence;
    :goto_9
    return-object p2

    .line 6183
    .restart local p2    # "label":Ljava/lang/CharSequence;
    :cond_a
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v0

    .line 6184
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_9
.end method

.method public static final getProtocolLabelResource(I)I
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 6159
    packed-switch p0, :pswitch_data_2c

    .line 6169
    const v0, 0x1040546

    :goto_6
    return v0

    .line 6160
    :pswitch_7
    const v0, 0x1040547

    goto :goto_6

    .line 6161
    :pswitch_b
    const v0, 0x1040548

    goto :goto_6

    .line 6162
    :pswitch_f
    const v0, 0x1040549

    goto :goto_6

    .line 6163
    :pswitch_13
    const v0, 0x104054a

    goto :goto_6

    .line 6164
    :pswitch_17
    const v0, 0x104054b

    goto :goto_6

    .line 6165
    :pswitch_1b
    const v0, 0x104054c

    goto :goto_6

    .line 6166
    :pswitch_1f
    const v0, 0x104054d

    goto :goto_6

    .line 6167
    :pswitch_23
    const v0, 0x104054e

    goto :goto_6

    .line 6168
    :pswitch_27
    const v0, 0x104054f

    goto :goto_6

    .line 6159
    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
        :pswitch_23
        :pswitch_27
    .end packed-switch
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .prologue
    .line 6146
    if-nez p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 6150
    .end local p2    # "label":Ljava/lang/CharSequence;
    :goto_8
    return-object p2

    .line 6149
    .restart local p2    # "label":Ljava/lang/CharSequence;
    :cond_9
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getTypeLabelResource(I)I

    move-result v0

    .line 6150
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_8
.end method

.method public static final getTypeLabelResource(I)I
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 6131
    packed-switch p0, :pswitch_data_14

    .line 6135
    const v0, 0x1040542

    :goto_6
    return v0

    .line 6132
    :pswitch_7
    const v0, 0x1040543

    goto :goto_6

    .line 6133
    :pswitch_b
    const v0, 0x1040544

    goto :goto_6

    .line 6134
    :pswitch_f
    const v0, 0x1040545

    goto :goto_6

    .line 6131
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
    .end packed-switch
.end method
