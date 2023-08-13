import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AccountSettingSection extends StatelessWidget {
  const AccountSettingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: const RoundedRectangleBorder(side: BorderSide.none),
      initiallyExpanded: false,
      tilePadding: const EdgeInsets.only(right: 20),
      trailing: const Icon(Icons.arrow_drop_down, color: Colors.white),
      title: const ListTile(
        leading: Text(
          ' Account',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
          ),
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0).copyWith(bottom: 20),
          child: GridView(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
                onPressed: () async => await launchUrlString(
                  'https://anilist.co/settings',
                  mode: LaunchMode.externalApplication,
                ),
                icon: LineIcon.link(color: Colors.white),
                label: const Text('Anilist'),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
                onPressed: () async => await launchUrlString(
                  'https://anilist.co/settings/account',
                  mode: LaunchMode.externalApplication,
                ),
                icon: LineIcon.userEdit(color: Colors.white),
                label: const Text('Account'),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
                onPressed: () async => await launchUrlString(
                  'https://anilist.co/settings/media',
                  mode: LaunchMode.externalApplication,
                ),
                icon: LineIcon.list(color: Colors.white),
                label: const Text('Media'),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () async => await launchUrlString(
                  'https://anilist.co/settings/import',
                  mode: LaunchMode.externalApplication,
                ),
                icon: LineIcon.fileImport(color: Colors.white),
                label: const Text('Import'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
