.class public final Lcom/sec/android/app/contacts/group/GroupMemberCountLoader;
.super Landroid/content/CursorLoader;
.source "GroupMemberCountLoader.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field public static final ICE_GROUP_MEMBER_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupMemberCountLoader;->COLUMNS:[Ljava/lang/String;

    .line 38
    const-string v0, "content://com.android.contacts/groups/title/ICE/contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "emergency"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupMemberCountLoader;->ICE_GROUP_MEMBER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 43
    sget-object v2, Lcom/sec/android/app/contacts/group/GroupMemberCountLoader;->ICE_GROUP_MEMBER_URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/contacts/group/GroupMemberCountLoader;->COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method
