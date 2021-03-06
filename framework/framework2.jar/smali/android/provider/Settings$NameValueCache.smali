.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation


# static fields
.field private static final DISABLED_CACHE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE:[Ljava/lang/String;


# instance fields
.field private final mCallGetCommand:Ljava/lang/String;

.field private final mCallSetCommand:Ljava/lang/String;

.field private mContentProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesVersion:J

.field private final mVersionSystemProperty:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1001
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    .line 1059
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    .line 1060
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string v1, "device_provisioned"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1061
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string v1, "accelerometer_rotation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1062
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string/jumbo v1, "user_rotation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1063
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string/jumbo v1, "mobile_data"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1064
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string v1, "data_roaming"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1065
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string v1, "airplane_mode_on"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1066
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string/jumbo v1, "show_password"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1067
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string/jumbo v1, "torch_light"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1068
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string/jumbo v1, "screen_brightness"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1069
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string v1, "easy_mode_switch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1070
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string/jumbo v1, "my_profile_font_filename"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1071
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string/jumbo v1, "my_profile_font_package"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1072
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string v1, "lock_pattern_autolock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1073
    sget-object v0, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    const-string/jumbo v1, "user_setup_complete"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1074
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "versionSystemProperty"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "getCommand"    # Ljava/lang/String;
    .param p4, "setCommand"    # Ljava/lang/String;

    .prologue
    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1006
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 1007
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    .line 1010
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 1019
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    .line 1020
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 1021
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 1022
    iput-object p4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 1023
    return-void
.end method

.method private lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;
    .registers 5
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 1026
    const/4 v0, 0x0

    .line 1027
    .local v0, "cp":Landroid/content/IContentProvider;
    monitor-enter p0

    .line 1028
    :try_start_2
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 1029
    if-nez v0, :cond_13

    .line 1030
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .end local v0    # "cp":Landroid/content/IContentProvider;
    .local v1, "cp":Landroid/content/IContentProvider;
    move-object v0, v1

    .line 1032
    .end local v1    # "cp":Landroid/content/IContentProvider;
    .restart local v0    # "cp":Landroid/content/IContentProvider;
    :cond_13
    monitor-exit p0

    .line 1033
    return-object v0

    .line 1032
    :catchall_15
    move-exception v2

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_15

    throw v2
.end method


# virtual methods
.method public getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .registers 24
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1078
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    move/from16 v0, p3

    if-ne v0, v4, :cond_52

    const/16 v16, 0x1

    .line 1079
    .local v16, "isSelf":Z
    :goto_a
    if-eqz v16, :cond_56

    .line 1080
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/provider/Settings$NameValueCache;->mVersionSystemProperty:Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    .line 1083
    .local v17, "newValuesVersion":J
    sget-object v4, Landroid/provider/Settings$NameValueCache;->DISABLED_CACHE:Ljava/util/HashSet;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 1086
    monitor-enter p0

    .line 1087
    :try_start_21
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    cmp-long v4, v4, v17

    if-eqz v4, :cond_36

    .line 1093
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1094
    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/provider/Settings$NameValueCache;->mValuesVersion:J

    .line 1097
    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 1098
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    monitor-exit p0

    move-object/from16 v19, v4

    .line 1168
    .end local v17    # "newValuesVersion":J
    :cond_51
    :goto_51
    return-object v19

    .line 1078
    .end local v16    # "isSelf":Z
    :cond_52
    const/16 v16, 0x0

    goto :goto_a

    .line 1100
    .restart local v16    # "isSelf":Z
    .restart local v17    # "newValuesVersion":J
    :cond_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_21 .. :try_end_56} :catchall_e5

    .line 1110
    .end local v17    # "newValuesVersion":J
    :cond_56
    invoke-direct/range {p0 .. p1}, Landroid/provider/Settings$NameValueCache;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v3

    .line 1116
    .local v3, "cp":Landroid/content/IContentProvider;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    if-eqz v4, :cond_98

    .line 1118
    const/4 v11, 0x0

    .line 1119
    .local v11, "args":Landroid/os/Bundle;
    if-nez v16, :cond_70

    .line 1120
    :try_start_63
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_63 .. :try_end_68} :catch_97

    .line 1121
    .end local v11    # "args":Landroid/os/Bundle;
    .local v12, "args":Landroid/os/Bundle;
    :try_start_68
    const-string v4, "_user"

    move/from16 v0, p3

    invoke-virtual {v12, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6f} :catch_146

    move-object v11, v12

    .line 1123
    .end local v12    # "args":Landroid/os/Bundle;
    .restart local v11    # "args":Landroid/os/Bundle;
    :cond_70
    :try_start_70
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v3, v4, v5, v0, v11}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v13

    .line 1124
    .local v13, "b":Landroid/os/Bundle;
    if-eqz v13, :cond_98

    .line 1125
    invoke-virtual {v13}, Landroid/os/Bundle;->getPairValue()Ljava/lang/String;

    move-result-object v19

    .line 1127
    .local v19, "value":Ljava/lang/String;
    if-eqz v16, :cond_51

    .line 1128
    monitor-enter p0
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_87} :catch_97

    .line 1129
    :try_start_87
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    monitor-exit p0

    goto :goto_51

    :catchall_94
    move-exception v4

    monitor-exit p0
    :try_end_96
    .catchall {:try_start_87 .. :try_end_96} :catchall_94

    :try_start_96
    throw v4
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_97} :catch_97

    .line 1140
    .end local v13    # "b":Landroid/os/Bundle;
    .end local v19    # "value":Ljava/lang/String;
    :catch_97
    move-exception v4

    .line 1146
    .end local v11    # "args":Landroid/os/Bundle;
    :cond_98
    :goto_98
    const/4 v14, 0x0

    .line 1148
    .local v14, "c":Landroid/database/Cursor;
    :try_start_99
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v6, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    const-string/jumbo v7, "name=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v3 .. v10}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v14

    .line 1150
    if-nez v14, :cond_e8

    .line 1151
    const-string v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t get key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dc
    .catch Landroid/os/RemoteException; {:try_start_99 .. :try_end_dc} :catch_10d
    .catchall {:try_start_99 .. :try_end_dc} :catchall_13f

    .line 1152
    const/16 v19, 0x0

    .line 1168
    if-eqz v14, :cond_51

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_51

    .line 1100
    .end local v3    # "cp":Landroid/content/IContentProvider;
    .end local v14    # "c":Landroid/database/Cursor;
    .restart local v17    # "newValuesVersion":J
    :catchall_e5
    move-exception v4

    :try_start_e6
    monitor-exit p0
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw v4

    .line 1155
    .end local v17    # "newValuesVersion":J
    .restart local v3    # "cp":Landroid/content/IContentProvider;
    .restart local v14    # "c":Landroid/database/Cursor;
    :cond_e8
    :try_start_e8
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_107

    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1156
    .restart local v19    # "value":Ljava/lang/String;
    :goto_f3
    monitor-enter p0
    :try_end_f4
    .catch Landroid/os/RemoteException; {:try_start_e8 .. :try_end_f4} :catch_10d
    .catchall {:try_start_e8 .. :try_end_f4} :catchall_13f

    .line 1157
    :try_start_f4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    monitor-exit p0
    :try_end_100
    .catchall {:try_start_f4 .. :try_end_100} :catchall_10a

    .line 1168
    if-eqz v14, :cond_51

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_51

    .line 1155
    .end local v19    # "value":Ljava/lang/String;
    :cond_107
    const/16 v19, 0x0

    goto :goto_f3

    .line 1158
    .restart local v19    # "value":Ljava/lang/String;
    :catchall_10a
    move-exception v4

    :try_start_10b
    monitor-exit p0
    :try_end_10c
    .catchall {:try_start_10b .. :try_end_10c} :catchall_10a

    :try_start_10c
    throw v4
    :try_end_10d
    .catch Landroid/os/RemoteException; {:try_start_10c .. :try_end_10d} :catch_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_13f

    .line 1164
    .end local v19    # "value":Ljava/lang/String;
    :catch_10d
    move-exception v15

    .line 1165
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_10e
    const-string v4, "Settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t get key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_136
    .catchall {:try_start_10e .. :try_end_136} :catchall_13f

    .line 1166
    const/16 v19, 0x0

    .line 1168
    if-eqz v14, :cond_51

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_51

    .end local v15    # "e":Landroid/os/RemoteException;
    :catchall_13f
    move-exception v4

    if-eqz v14, :cond_145

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_145
    throw v4

    .line 1140
    .end local v14    # "c":Landroid/database/Cursor;
    .restart local v12    # "args":Landroid/os/Bundle;
    :catch_146
    move-exception v4

    move-object v11, v12

    .end local v12    # "args":Landroid/os/Bundle;
    .restart local v11    # "args":Landroid/os/Bundle;
    goto/16 :goto_98
.end method

.method public putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 11
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    .line 1039
    invoke-static {p1, p2}, Landroid/provider/Settings$LogMsg;->checkToMakeCallStackLog(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1040
    invoke-static {p2, p3}, Landroid/provider/Settings$LogMsg;->writeCallStackLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    :cond_9
    :try_start_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1045
    .local v0, "arg":Landroid/os/Bundle;
    const-string/jumbo v3, "value"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string v3, "_user"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1047
    invoke-direct {p0, p1}, Landroid/provider/Settings$NameValueCache;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 1048
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    invoke-interface {v1, v3, v4, p2, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_26} :catch_28

    .line 1053
    const/4 v3, 0x1

    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    :goto_27
    return v3

    .line 1049
    :catch_28
    move-exception v2

    .line 1050
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t set key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1051
    const/4 v3, 0x0

    goto :goto_27
.end method
